# wildman-skill-trees

How to learn Kettlebells, Clubs, and Maces the Wildman way, visualised.

[Mark Wildman][4] is the best online coach I know, and has shared vast amounts of his knowledge and experience with Kettlebells, Clubs and Maces via [YouTube][MWYT] and [Instagram][MWIG]. In particular, he has shared his personal approach to teaching these tools, and building towards complex movements and skills.

This is my humble attempt to coalesce this semi-implicit knowledge into structures that fit my brain. This can be considered a fan work, in that these diagrams contain as little innovation or deviation from Wildman's guidance as possible. They are shared in the hopes that they might also be useful to you.

[4]: https://www.wildmanathletica.com/
[MWYT]: https://www.youtube.com/@MarkWildman
[MWIG]: https://www.instagram.com/wildmanathletica/

### Features

- Skill progressions arranged into progressive tree structure.
- Use of GraphViz allows easy extension and remixing.
- Includes links back to Wildman videos and playlists with full instructions.
- Bootstrap programs for incrementally learning and practicing new skills **[Experimental!]**
- Full CSV lists of sequences, useful for your own experiments

### Limitations

- Movement is infinitely complex, these models are not. Legibility has been preferred over strict accuracy.
- Mark is constantly publishing new material, and these diagrams are likely to fall out of date.
- The URL links to each video will only be present on SVG renderings.
  You can open a downloaded SVG diagram directly in most browsers.

### Possible Uses

- Coaches planning a curriculum for student athletes.
- Self-teaching guide.
- Near-endless drill variations to freshen a program.

## Table of Contents

- [The Diagrams](#the-diagrams)
  - [Kettlebell Basic Skill Progression](#kettlebell-basic-skill-progression)
  - [Two-Handed Heavy Club Skill Progression](#two-handed-heavy-club-skill-progression)
  - [Single-Arm Heavy Club Skill Progression](#single-arm-heavy-club-skill-progression)
  - [Mace Progression](#mace-progression)
- [Bootstrap Programs](#bootstrap-programs) - *Experimental*
  - [Kettlebell Bootstrap Program](#kettlebell-bootstrap-program)
  - [Two-Handed Heavy Club Bootstrap Program](#two-handed-heavy-club-bootstrap-program)
- [Sequence Lists](#sequence-lists)
- [Contributing](#contributing)

## The Diagrams ##

The format includes the Wildman index order of recommended progression, the Wildman name for the drill (and alternative common names), and an optional field that notes the key idea or skill that should be established by the drill before moving onto more complex drills.

For the SVG version of the diagrams, links to the video and the playlist it belongs to have been included where possible.

### Kettlebell Basic Skill Progression ###

This is the full progression, to the best of my abilities. It's quite a lot to take in all at once.

| Source | SVG |
|------- | --- | 
| [`/src/kb/kb_progression_ALL.puml`](/src/kb/kb_progression_ALL.puml) |  [`/dist/kb_progression_ALL.svg`](/dist/kb_progression_ALL.svg) |

![Tree of every kettlebell drill, arranged in order of learning.](/dist/kb_progression_ALL.svg)

Because any single diagram will eventually become too complicated to use, I am breaking the KB Basic Skill progression into roughly the order presented, organised by theme (and whim).

**Part 1, Covers #1 to #23**

Covers Wildman's Kettlebell Basic Instruction from #1 to #23.

I have chosen to colour the drills that are specifically highlighted as useful warmup movements (orange), and what I call 'auxiliary' drills that are unlikely to be included in workouts long-term after the core idea has been digested.

| Source | SVG |
|------- | --- | 
| [`/src/kb/kb_progression_1.gv`](/src/kb/kb_progression_1.gv) |  [`/dist/kb_progression_1.svg`](/dist/kb_progression_1.svg) |

![Tree of kettlebell drills, arranged in order of learning.](/dist/kb_progression_1.svg)


**Part 2, Covers #24 to #38, and #42 (TGU)** 

Once the basics have been established, Wildman moves into developing the precursor skills for the Turkish Get-Up and Turkish Get-Down. Wildman prefers to alternate between the getup and getdown lessons to keep it fresh.

| Source | SVG |
|------- | --- | 
| [`/src/kb/kb_progression_2_tgu.gv`](/src/kb/kb_progression_2_tgu.gv) |  [`/dist/kb_progression_2_tgu.svg`](/dist/kb_progression_2_tgu.svg) |

![Tree of kettlebell drills for TGU skills, arranged in order of learning.](/dist/kb_progression_2_tgu.svg)

**Part 3**

Covers #39 to #55, as well as a cheeky #72, the Deck Squat. This is mostly related to improving squat and getup technique, with a sidebar for performance with the Push Press and Thruster.

| Source | SVG |
|------- | --- | 
| [`/src/kb/kb_progression_3.gv`](/src/kb/kb_progression_3.gv) |  [`/dist/kb_progression_3.svg`](/dist/kb_progression_3.svg) |

![Tree of kettlebell drills for further skills, arranged in order of learning.](/dist/kb_progression_3.svg)

**Part 4**

Covers #56 to #73, minus the Deck Squat. Here, the snatch is developed, as well as a range of double KB drills.

| Source | SVG |
|------- | --- | 
| [`/src/kb/kb_progression_4.gv`](/src/kb/kb_progression_4.gv) |  [`/dist/kb_progression_4.svg`](/dist/kb_progression_4.svg) |

![Tree of kettlebell drills for further skills, arranged in order of learning.](/dist/kb_progression_4.svg)

### Two-Handed Heavy Club Skill Progression ###

Here, we've grouped the sequenced drills into logical clusters, not quite the Seven movements that Wildman speaks of. I've excluded the unsequenced drills for simplicity.

| Source | SVG |
|------- | --- | 
| [`/src/hc/hc_2h_progression_ALL.puml`](/src/hc/hc_2h_progression_ALL.puml) |  [`/dist/hc_2h_progression_ALL.svg`](/dist/hc_2h_progression_ALL.svg) |

![Tree of two-hand heavy club drills, arranged to highlight sequence.](/dist/hc_2h_progression_ALL.svg)

Because any single diagram will eventually become too complicated to use, we also break out the sequence into parts. We're including the unsequenced drills that we know of as we go.

**Part 1**

| Source | SVG |
|------- | --- | 
| [`/src/hc/hc_2h_progression_1.puml`](/src/hc/hc_2h_progression_1.puml) |  [`/dist/hc_2h_progression_1.svg`](/dist/hc_2h_progression_1.svg) |

![Tree of two-hand heavy club drills, arranged in order of learning.](/dist/hc_2h_progression_1.svg)

**Part 2**

| Source | SVG |
|------- | --- | 
| [`/src/hc/hc_2h_progression_2.puml`](/src/hc/hc_2h_progression_2.puml) |  [`/dist/hc_2h_progression_2.svg`](/dist/hc_2h_progression_2.svg) |

![Tree of more two-hand heavy club drills, arranged in order of learning.](/dist/hc_2h_progression_2.svg)

**ALT View**

I'm experimenting with an alternative view of the full 2HHC graph with the following decisions:

- Colour gradient from light yellow to dark green to indicate where in the sequence the drill falls
- Remove unsequenced drills, simplified dependencies
- Simplified vertical layout focused on grouping layers together

| Source | SVG |
|------- | --- | 
| [`/src/hc/hc_2h_progression_ALT.puml`](/src/hc/hc_2h_progression_ALT.puml) |  [`/dist/hc_2h_progression_ALT.svg`](/dist/hc_2h_progression_ALT.svg) |

![Tree of two-hand heavy club drills, arranged to highlight sequence.](/dist/hc_2h_progression_ALT.svg)

### Single-Arm Heavy Club Skill Progression ###

Single-arm Heavy Club is generally developed *after* two-handed heavy club so that the athlete learns to rotate their body correctly. As such, the precursor two-handed skills are included in green to indicate how single-arm heavy club proceeds from them.

| Source | SVG |
|------- | --- | 
| [`/src/hc/hc_sa_progression.gv`](/src/hc/hc_sa_progression.gv) |  [`/dist/hc_sa_progression.svg`](/dist/hc_sa_progression.svg) |

![Tree of single-arm Heavy Club drills, arranged in order of learning.](/dist/hc_sa_progression.svg)

### Mace Progression ###

This steel mace/macebell progression is a WIP, currently covering ~30 movements of a listed 107. Because this was the first attempt at sequencing that MW put out, it's a bit different from the rest:

- Many videos cover multiple variations on a movement; in these cases we use XX-X to indicate index + variation.
- The focus rapidly moves to building complex, integrated movements
- Both single hand and two-handed movements are covered in the same sequence

| Source | SVG |
|------- | --- | 
| [`/src/mace/mace_progression_ALL.puml`](/src/mace/mace_progression_ALL.puml) |  [`/dist/mace_progression_ALL.svg`](/dist/mace_progression_ALL.svg) |

![Tree of mace drills, arranged in order of complexity.](/dist/mace_progression_ALL.svg)

**Warrior Stance Sub-Sequence**

As and experiment, I've broken out the warrior stance mace movements into their own sub-sequence in order make this particular set more legible.

| Source | SVG |
|------- | --- | 
| [`/src/mace/mace_warrior_subsequence.puml`](/src/mace/mace_warrior_subsequence.puml) |  [`/dist/mace_warrior_subsequence.svg`](/dist/mace_warrior_subsequence.svg) |

![Tree of mace drills related to warrior stance.](/dist/mace_warrior_subsequence.svg)

## Bootstrap Programs ##

Using the skill progression sequences, I've built a couple of experimental programs that one could use to start from scratch with kettlebells or heavy clubs and develop confidence as one learns increasingly complex skills.

The focus is not on increasing work capacity. While they are (light) real workouts, the idea is to complete the program ready to begin something like MW's Mill Squat program or the Wildfan Free 2H club program.

The programs are arranged in "levels" based on consecutive blocks of the sequenced drills for each tool, and I am using the [level interlacing idea][interlace] MW presents for his Slam Ball program to approximate a progressive wave of difficulty.

[interlace]: https://www.youtube.com/watch?v=YarJh0UW7-0

**Caveats and Disclaimers:**

- This is currently a WIP and being actively tested. The programs may have major flaws and need drastic changes.
- No warranty, express or implied, is offered by yours truly.
- Because this is still an experiment, only the bare minimum of formatting has been applied to the Excel spreadsheets. No manual is provided, so it might take a minute to orient yourself.

That said, guinea pigs are more than welcome to assist in proving out the concept with me. If you *do* try out these ideas, please find me on the [Wildfan Discord][wildfan] and let me know how it goes!

[wildfan]: https://discord.com/invite/Fv7QF6DQ4g

### Kettlebell Bootstrap Program ###

Because of the incremental nature of this idea, the early workouts cannot be described as "full-body", focusing instead on the core movements that might add the most to anyone's existing practice.

The KB program starts its **Level 1** with warmups and the two-handed swing and then begins to alternate with **Level 2**'s introduction to the Clean and Overhead Press (as separate drills). **Level 3** introduces the combined Clean & Press and four Squat variations, allowing us to model the AB program of MW's first [Tetris of Training][ToT] video. A proposed **Level 4** would then move onto Turkish Getup preparatory movements.

Rep count is used as a rough guide to track increased work volume over the program. Multiply this by weight to track work capacity.

[ToT]: https://www.youtube.com/watch?v=sAcBo4H__hE

Download the program as a spreadsheet here: [`/src/kb/kb_bootstrap_program.xlsx`](/src/kb/kb_bootstrap_program.xlsx)

### Two-Handed Heavy Club Bootstrap Program ##

The key organising idea for the heavy club program is for every workout to cover as much of seven movement families as possible: squat, side swing, clean & press, lunge, mill, swipe, and getup.

Drills are performed for Time Under Tension, 30 seconds of activity followed by 30 seconds of rest, repeated for two rounds, leading to a workout of between 8 to 12 minutes.

Download the program as a spreadsheet here: [`/src/hc/2hhc_bootstrap_program.xlsx`](/src/hc/2hhc_bootstrap_program.xlsx)

## Sequence Lists ##

In order to keep track of the totality of the movements, I have created structured lists that one could import as a spreadsheet or use in a script or... whatever. I offer this - as-is - as a kind of bonus feature for other nerds who might want to build upon my work.

Each row contains, at a minimum:
- `ID` - index ID of the movement e.g. `2HHC-25`
- `Graph_Name` - Programmatic handle e.g. `mov_25_mill`
- `Label` - Text label (with line breaks)
- `URL` - This may contain standalone or playlist links but by default should be standalone.

Some contain additional fields that may or may not be useful to you. These are easy to strip using Excel or Libre Calc.

| Sequence | File |
|------- | --- | 
| Kettlebell | [`/src/kb/kb_progression.csv`](/src/kb/kb_progression.csv) |
| Two-handed Heavy Club |  [`/src/hc/hc_2h_progression.csv`](/src/hc/hc_2h_progression.csv) |
| Single-arm Heavy Club | *Does not exist, sorry!*|
| Mace | [`/src/mace/mace_progression.csv`](/src/mace/mace_progression.csv) |

If you use these for your own project, do let me know!

## Contributing ##

The diagrams are created using GraphViz's Dot language as supported by the [PlantUML toolset][2]. Dot supports [many image formats][1] and this is also true of the [PlantUML wrapper][7], so if the existing built formats do not suit, it should be easy to render the diagrams into your format of choice.

The reason for PlantUML rather than straight GraphViz is the prevalence of good PlantUML tool integration with tools like VS Code.

[1]: https://graphviz.org/docs/outputs/
[2]: https://plantuml.com/dot
[7]: https://plantuml.com/command-line

### Building ###

I use the Powershell build automation tool, [psake], to run PlantUML render steps.

[psake]: https://github.com/psake/psake/tree/master

```ps1
> Invoke-Psake .\psakefile.ps1
```

The following targets are currently available:

- `Full` - Build everything from scratch (default)
  - `Clean` - Delete all generated images
  - `Compile`
    - `CompileHeavyClub`
    - `CompileKettlebell`
    - `CompileMace`

Additional/alternative formats can be rendered by overriding the `$OutputFormats` property:

```ps1
> Invoke-Psake .\psakefile.ps1 -properties @{"OutputFormats"=@("svg","png")}
```
