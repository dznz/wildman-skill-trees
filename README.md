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

## The Diagrams ##

The format includes the Wildman index order of recommended progression, the Wildman name for the drill (and alternative common names), and an optional field that notes the key idea or skill that should be established by the drill before moving onto more complex drills.

For the SVG version of the diagrams, links to the video and the playlist it belongs to have been included where possible.

### Kettlebell Basic Skill Progression ###

Because any single diagram will eventually become too complicated to use, I am breaking the KB Basic Skill progression into roughly the order presented, organised by theme (and whim).

**Part 1, Covers #1 to #23** - [`kb_progression_1.gv`](/kb_progression_1.gv)

Covers Wildman's Kettlebell Basic Instruction from #1 to #23.

I have chosen to colour the drills that are specifically highlighted as useful warmup movements (orange), and what I call 'auxiliary' drills that are unlikely to be included in workouts long-term after the core idea has been digested.

![Tree of kettlebell drills, arranged in order of learning.](/dist/kb_progression_1.svg)

**Part 2, Covers #24 to #38, and #42 (TGU)** - [`kb_progression_2_tgu.gv`](/kb_progression_2_tgu.gv)

Once the basics have been established, Wildman moves into developing the precursor skills for the Turkish Get-Up and Turkish Get-Down. Wildman prefers to alternate between the getup and getdown lessons to keep it fresh.

![Tree of kettlebell drills for TGU skills, arranged in order of learning.](/dist/kb_progression_2_tgu.svg)

**Part 3, Covers #39 up** - [`kb_progression_3.gv`](/kb_progression_3.gv)

This diagram is a WIP and is likely to change as I catch up to Mark (he's on #69 as of today) and he uploads further videos. Also as structure becomes more apparent. 

![Tree of kettlebell drills for further skills, arranged in order of learning.](/dist/kb_progression_3.svg)

### Single-Arm Heavy Club Skill Progression ###

[`hc_sa_progression.gv`](/hc_sa_progression.gv)

Single-arm Heavy Club is generally developed *after* two-handed heavy club so that the athlete learns to rotate their body correctly. As such, the precursor two-handed skills are included in green to indicate how single-arm heavy club proceeds from them.

![Tree of single-arm Heavy Club drills, arranged in order of learning.](/dist/hc_sa_progression.svg)

## Contributing ##

The diagrams are created using GraphViz's Dot language and [command-line renderer][0]. Dot supports [many image formats][1] so if the existing built formats do not suit, it should be easy to render the diagrams into your format of choice.

[0]: https://graphviz.org/doc/info/command.html
[1]: https://graphviz.org/docs/outputs/

```sh
$ dot -Tsvg kb_progression_1.gv -o dist/kb_progression_1.svg
$ dot -Tsvg kb_progression_2_tgu.gv -o dist/kb_progression_2_tgu.svg
$ dot -Tsvg kb_progression_3.gv -o dist/kb_progression_3.svg
$ dot -Tsvg hc_sa_progression.gv -o dist/hc_sa_progression.svg
```

### Hint ###

I actually use PlantUML's (underdocumented) [support][2] for Dot digraphs to take advantage of PlantUML's excellent VS Code preview rendering. It's as simple as wrapping the dot code in the PlantUML start and end tags:

```puml
@startdot
digraph kb_progression { ... }
@enddot
```

Long-term, I may switch to PlantUML as the official render to take advantage of its built-in extras like [legends][3].

[2]: https://plantuml.com/dot
[3]: https://plantuml.com/commons#3b05da228ffe6d52
