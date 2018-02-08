# Hardware Breakneck Design

The Breakneck design follows a kitchen sink model to provide features expected in a developer edition hardware wallet.

[<img width="300" src="https://taiga.getmonero.org/media/attachments/1/c/7/0/857dcae1517fe27c1988443ef7da48e2570af956d34ba7957f6b542c2a95/breakneck-sch.png" alt="Breakneck schematic" />](https://github.com/monero-project/kastelo/tree/master/hardware/breakneck/)

## Getting Started

The Breakneck design consists of several files, some which are not tracked in revision control but are part of [releases](https://github.com/monero-project/kastelo/releases/).

* breakneck.pro
* breakneck.sch
* breakneck.kicad_pcb
* libraries

Fabrication subdirectories contain files meant for printing, assembly, and other production work.

* billofmat
* fabpanel
* fabraster
* fabsingle
* fabvector

Other subdirectories exist to provide conveniently formatted files generated from source.

* release
* schematic

A Makefile serves project management tasks allowing for scripting and automation.

* Makefile
