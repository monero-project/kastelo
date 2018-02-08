# Hardware Breakneck Design

The Breakneck design includes rich features as expected in a developer edition hardware wallet.

[<img height="420" src="https://taiga.getmonero.org/media/attachments/1/c/7/0/857dcae1517fe27c1988443ef7da48e2570af956d34ba7957f6b542c2a95/breakneck-sch.png" alt="Breakneck schematic" />](https://github.com/monero-project/kastelo/tree/master/hardware/breakneck/)

## Getting Started

The Breakneck design consists of several files, some which are not tracked in revision control but are part of [project releases](https://github.com/monero-project/kastelo/releases/).

* breakneck.pro (KiCad project)
* breakneck.sch (KiCad schematic)
* breakneck.kicad_pcb (KiCad layout)
* libraries (KiCad libraries)

Fabrication subdirectories contain files meant for printing, assembly, and other production work.

* billofmat (Bill of materials generated from breakneck.sch)
* fabpanel (Gerber files for printing panelized PCBs)
* fabraster (3D rendition of a single PCB layout)
* fabsingle (Gerber files for printing single PCBs)
* fabvector (Vector files useful for mechanical engineering)

Other subdirectories exist to provide conveniently formatted files generated from source.

* release (Tested distribution release files containing change logs)
* schematic (Copy of breakneck.sch converted to common graphic formats)

A Makefile serves project management tasks allowing for scripting and automation.

* Makefile (A GNU Makefile facilitating command line project tasks)
