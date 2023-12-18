# wildman-skill-trees

How to learn Kettlebells, Clubs, and Maces the Wildman way, visualised.

[Mark Wildman][4] is the best online coach I know, and has shared vast amounts of his knowledge and experience with Kettlebells, Clubs and Maces via [YouTube][5] and [Instagram][6]. In particular, he has shared his personal approach to teaching these tools, and building towards complex movements and skills.

This is my humble attempt to coalesce this semi-implicit knowledge into structures that fit my brain. This can be considered a fan work, in that these diagrams contain as little innovation or deviation from Wildman's guidance as possible. They are shared in the hopes that they might also be useful to you.

[4]: https://www.wildmanathletica.com/
[5]: https://www.youtube.com/@MarkWildman
[6]: https://www.instagram.com/wildmanathletica/

### Features

- Skill progressions arranged into progressive tree structure.
- Use of GraphViz allows easy extension and remixing.
- Includes links back to Wildman videos and playlists with full instructions.

### Limitations

- Movement is infinitely complex, these models are not. Legibility has been preferred over strict accuracy.
- Mark is constantly publishing new material, and these diagrams are likely to fall out of date.
- The URL links to each video will only be present on SVG renderings.

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

- Many videos cover multiple variations on a movement
- The focus rapidly moves to building complex, integrated movements

| Source | SVG |
|------- | --- | 
| [`/src/mace/mace_progression_ALL.puml`](/src/mace/mace_progression_ALL.puml) |  [`/dist/mace_progression_ALL.svg`](/dist/mace_progression_ALL.svg) |

![Tree of mace drills, arranged in order of complexity.](/dist/mace_progression_ALL.svg)

## Contributing ##

The diagrams are created using GraphViz's Dot language and [command-line renderer][0]. Dot supports [many image formats][1] so if the existing built formats do not suit, it should be easy to render the diagrams into your format of choice.

[0]: https://graphviz.org/doc/info/command.html
[1]: https://graphviz.org/docs/outputs/

### Building ###

I use the Powershell build automation tool, [psake], to run graphviz and PlantUML steps.

[psake]: https://github.com/psake/psake/tree/master

```ps1
> Invoke-Psake .\psakefile.ps1
```

The following targets are currently available:

- `Compile`
  - `CompileHeavyClub`
  - `CompileKettlebell`
  - `CompileMace`

### Hint ###

I actually use PlantUML's (underdocumented) [support][2] for Dot digraphs to take advantage of PlantUML's excellent VS Code preview rendering. It's as simple as wrapping the dot code in the PlantUML start and end tags:

```puml
@startdot
digraph kb_progression { ... }
@enddot
```

Long-term, I may switch to PlantUML as the official render tool.

[2]: https://plantuml.com/dot
