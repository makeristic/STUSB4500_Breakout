# Source and hardware audit

Reviewed 2026-10-26 with KiCad nightly 10.99.0. Scope: schematic, symbol dependencies, stored netlist, PCB connectivity, and fabrication provenance. This is a static review, not a bench test or manufacturing sign-off.

## Red flags requiring circuit review

**U1's 2.7 V regulator output is tied to the host rail.** `STUSB4500_Breakout.kicad_pcb:1059` assigns both U1.22 and U1.23 to `VCC`; the schematic's `VCC` label at `(5400,2000)` joins the C3/U1.23 branch. The same rail reaches both STEMMA connectors, VSYS, and the I²C pull-ups. [ST's datasheet](https://www.st.com/resource/en/datasheet/stusb4500.pdf), sections 2.2.14–2.2.15, distinguishes the VSYS input from the VREG_2V7 output, which is for external decoupling only.

The required logical split is U1.23 plus C3.1 on a dedicated decoupling net, keeping VSYS on host VCC. The PCB does not contain an already isolated branch: U1.23 is the feed junction to J3.2 and U1.22, while C3.1 separately joins the global rail near R7. Correcting this requires a new supply route and decoupling route or capacitor placement, rather than removing a single connecting trace. No speculative rerouting was applied.

**The RGB indicator crosses a voltage domain.** D5.1 is on negotiated `VSNK`, and D5.4/R9 connect to U1.14 (`POWER_OK3`). That pin's operating range is 0–4.5 V, with 6 V absolute maximum, whereas `POWER_OK2` is a high-voltage output. The common-anode LED path can pull the inactive POWER_OK3 output toward the negotiated rail. Review the indicator supply/driver topology before enabling higher PDO voltages; a series LED resistor alone is not a verified voltage clamp. The existing circuit was not redesigned in this audit. See the same datasheet's electrical-characteristic tables.

## Corrections made

- Restored a versioned `STUSB4500_Breakout-cache.lib` so a fresh legacy schematic can load without the author's global symbol setup. Standard definitions come from [KiCad symbols tag 5.1.7](https://github.com/KiCad/kicad-symbols/tree/5.1.7), commit `bf475af94877e8fd9cf80e667578ff61835e02bb`; the MOSFET definition comes from the existing Makeristic library.
- Added project symbol/footprint tables resolving the Makeristic library from a sibling checkout.
- Removed obsolete J5/J6 components and their eight pin entries from the old-format `.net` file. Neither header exists in the current schematic or PCB. The legacy netlist format and all remaining connectivity are preserved; this is reconciliation of a historical export, not a new CAD-format migration.
- Preserved the existing CC BY 4.0 design licence. Cached KiCad library material retains [its own licence and exception](../LICENSES/KiCad-Libraries.md); mixed-source Makeristic library material retains its original terms.

## Verification

A fresh schematic netlist was exported successfully after restoring the cache. Its complete pin-connectivity graph matches the corrected stored netlist across **102 pins**. The comparison ignores generated net-name spelling changes between KiCad versions, not connectivity. All 29 schematic components agree with their PCB value and footprint assignments. The PCB additionally contains logo graphics and three labelled test pads, which intentionally do not appear in the schematic.

With an isolated configuration loading historical symbols, current installed footprints, and the custom libraries, ERC reports **4 findings**: two supply-drive declarations and two labels attached to only one pin. These do not detect the regulator/indicator misuse described above.

Refilled PCB DRC reports **45 findings**, with **0 unconnected items**:

- 24 footprint differences against the installed modern libraries.
- 4 copper-to-edge clearances and 5 hole-clearance findings.
- 8 incomplete thermal connections, 2 mirrored front-layer texts, and 2 silkscreen/edge findings.

These counts use modern nightly rules and best-effort legacy zone conversion; they are not an interpretation of a historical fabricator's rules. For example, J1's locating holes produce 0.1651–0.2150 mm clearances against a 0.25 mm default, and the board edge default is 0.5 mm. Review them against the actual connector drawing, board process, and stackup rather than loosening rules to obtain a clean report.

Representative commands, run on temporary copies with the cache and dependencies available:

```sh
kicad-cli-nightly sch export netlist --output /tmp/stusb.net STUSB4500_Breakout.sch
kicad-cli-nightly sch erc --format json --severity-all --exit-code-violations --output /tmp/stusb-erc.json STUSB4500_Breakout.sch
kicad-cli-nightly pcb drc --format json --severity-all --refill-zones --exit-code-violations --output /tmp/stusb-drc.json STUSB4500_Breakout.kicad_pcb
```

ERC/DRC return exit 5 because findings remain. No exclusions were introduced. Checks used temporary `XDG_CONFIG_HOME` library tables; no shared KiCad settings were changed.

## Remaining work

Resolve both voltage-domain defects, review the PCB constraints and thermal connections, then regenerate and inspect all fabrication outputs from an agreed source revision. The committed Gerbers, drill files, PDF, and pictures are historical artifacts; their presence does not establish suitability for manufacture. No host software, NVM programming procedure, measured power/thermal results, or production acceptance record was found.
