## Monezor Design Status

This was the monezor hw wallet PCB revision control.

New development of STM32 based designs throughout the project stopped after the Julian Candy released hardware revision 0.2.0.

## Exit Reasoning

STM32 integration stopped as the architecture (at least M3 based MCUs) failed to meet expectations, as well as better architectures with immutable boot and hardware cryptography appeared.

## Maintenance Plan

STM32 design is maintained in the (developer edition) Breakneck codebase, for those who prefer the architecture opposed to the advanced and improved one found in the tip master of revision control.

To find the STM32 based Breakneck codebase, switch to the _revstm_ branch:

```
$ git checkout revstm
$ cd hardware/breakneck
```

## Development Plan

New features are found in the Breakneck master codebase which migrates logic to a new consumer edition codebase as UX and functional testing mandates.

To find the current Breakneck codebase, switch to the _master_ branch:

```
$ git checkout master
$ cd hardware/breakneck
```

## New Architecture

Although nRF52840 is a candidate, the replacement for STM32 parts in new designs is CEC1702.

## Preservation Plan

The STM32 based Monezor codebase is preserved in the _revstm_ branch.

## Glossary

- **Consumer edition:** One of two Monero dedicated hardware wallet editions, integrating a well tested subset of features from the developer edition.
- **Developer edition:** One of two Monero dedicated hardware wallet editions, including all features. For example, the developer edition may contain experimental intrusion detection while the consumer edition may not (unless the features are proven stable and useful.)
- **Monezor:** The model name associated with the consumer edition.
- **Breakneck:** The model name associated with the developer edition.
- **Julian Candy:** A code name corresponding with a range of hardware revisions including 0.2.0.
- **Extra Tabulo:** A code name corresponding with a range of hardware revisions including 0.9.0.
