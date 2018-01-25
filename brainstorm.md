# BREAKDOWN General To-Do/Brainstorming
## Bugfixes
### Fix "Out of [x]!" missing [x] text
### Allow "pulped" but still yellow corpses to be smashed (or remove yellow if these do not rez)
## Major Features
These will require major and intensive changes to the existing C:DDA code.
### Advanced World Customization
Allow whitelist/blacklist of individual monsters, item spawns, etc.
### 3D Code Continuation
Add 3D "floor passthrough" view, or possibly isometric/true 3D "Minecraft style"?
3D interaction is not important yet, just viewing
True 3D may progress to more advanced levelgen/movement (you-move-as-they-do system a la Superhot, or even realtime a la Minecraft) -- or just add this anyways in 2D? Crafting Overhaul adds some QoL features to make this better (Projects and Unattended Crafts)
### 3D Vehicles
### Crafting Overhaul
#### Craft Skills
Your skill in crafting is now represented by an entirely separate set of Skills. These represent different topics that are more specific than C:DDA's craft skills -- e.g. brewing, gunsmithing, Italian cooking, industrial metalworking (frames, vehicle parts, etc.)...
#### Recipe Caps and Inventor's Journals
Depending on the MEM stat (or on INT until this is implemented), you can only remember a certain maximum number of recipes per Craft Skill. Currently-remembered recipes can be written down in an Inventor's Journal. Auto-discover recipes have a chance to fail unless memorized or written down in a nearby IJ, and require more time to be written down (theory approach) unless at least one successful craft has been performed (experimentation approach). Blueprints for individual items can also be found or crafted.
#### Projects and Unattended Crafts
Crafting items are deposited into a Project item when crafting starts; this item tracks craft progress and can be disassembled at any time, with retrieval chance decreasing as progress increases.
Some crafting items are staged, and have an option to stop at a certain stage (for time/resource control).
Some crafting items are Unattended during certain stages (e.g. cooking). These may be ruined if the player leaves too long -- specifically cooking -- but the player may perform other tasks in the meantime.
### Substat System
Branches the current stats into more-specific substats.
Substats can grant bonuses to some skills, and replace some of the stock stat bonuses.
#### From INT
##### Attunement (ATT)
Affects the effectiveness of the magic you personally cast or otherwise apply.
##### Memory (MEM)
Affects skill rust (if enabled), fog-of-war trail length, and recipe cap.
##### Resourcefulness (RES)
Affects your ability to jury-rig things, and your ability to interact with and understand technological artifacts.
##### Logic (LOG)
Affects your ability to interact favorably with NPCs through reasoning and exposition.
#### From STR
##### Groundedness (GRD)
Affects your resistance to hostile and environmental magic.
##### Constitution (CON)
Affects your health and your resistance to disease, infection, and parasites.
##### Stamina (STA)
Affects the capacity and regen of your ingame stamina bar, and otherwise your ability to perform continuous and strenuous physical tasks.
##### Force (FRC)
Affects your burst strength, which comes in handy during both crafting and combat.
#### From DEX
##### Handiness (HND)
Affects your ability to use artifacts, tools, and technologies of every sort, as well as your ability to sneak around and steal from NPCs.
##### Agility (AGI)
Affects your ability to dodge attacks and navigate difficult terrain, and also provides a boost to sneaking.
##### Steadiness (STE)
Affects your accuracy with ranged weapons, and gives you a boost to crafting speed and quality.
##### Flexibility (FLX)
Affects your ability to move in armor, your movement speed, and your ingame stamina bar in some cases.
#### From PER
##### Mysticism (MYS)
Affects your ability to study and identify magic, including your ability to interact with magical artifacts.
##### Vigilance (VIG)
Affects your ability to use your senses -- sight range, chance to notice traps, etc.
##### Deduction (DED)
Affects your ability to identify traps and objects, as well as your ability to predict movement of NPCs and mechanical objects.
##### Charisma (CHA)
Affects your ability to interact favorably with NPCs through diplomacy and charm.
### Races
Multiple races for the player, similar to mutation categories in some ways. Races get experience bonuses to some skills and free modifications to their stats. Some "races" are only accessible through mutation, but represent greater changes than most mutations and are locked behind a second threshold-like system (Rebirth).
#### Human
Adaptable and resilient. The humans are the lucky ones -- the ones that weren't physically changed by multiversal intersection. They've been here a while, and know what's up with the old technology strewn about.
\+ Higher experience gain in general.
\+ Extra bonuses to skills involving human technology (firearms, vehicles...).
\- Smelly -- the zombies were created from humans, and thus they seek them out first.
\* Preferred Rebirth categories: Any.
#### Elf
Elves were overwhelmed by the Cataclysm's magical forces, and infused with them. Elves are more skilled with magic and more intelligent in general, but are weaker than other races.
\+ Higher experience gain for Magic skills.
\+ Free +1 increase to ATT, LOG, RES, MEM, HND, AGI, FLX, MYS, VIG.
\- "Free" -1 penalty to CON and FRC. STA and GRD are unaffected.
\* Preferred Rebirth categories: Drow, High Elf, Wood Elf.
#### Dwarf
\* Preferred Rebirth categories: Gnome, Halfling, Kobold.
\+ Higher experience gain for crafting and construction skills.
\+ Free +1 increase to STR and DEX each (and to all involved substats).
The Cataclysm forced upon the Dwarves an overwhelming urge to rebuild -- and also an increase in durability and a decrease in stature. Dwarves are more durable than other races and also more skilled with crafting, but are almost completely incapable of using magic.
#### Orc
\* Preferred Rebirth categories: Ogre, Naga, Draconid.
Orcs were completely torn apart and remade by the Cataclysm, and came back far stronger... and uglier. Orcs are far more durable and strong than other races, but are less intelligent and get along poorly with most other creatures. Orcs are average with magic.
### Rebirth
Rebirths are like Races, but are part of the mutation system, representing another layer beyond Thresholds.
Each base Race has preferred Rebirth categories; the former are more likely to mutate randomly towards the latter.
Rebirths will enable entirely new series of Mutations -- for example, more useful variants of wings for Draconids and High Elves.
#### Gnome
Excels at crafting and inventing of any sort; similarly durable to Dwarves.
#### Halfling
Excels at throwing; even more durable than Dwarves, also skilled at first aid and cooking.
#### Kobold
Excels at trapping and exploring (survival); less durable than Dwarves, but gains claws, tail, muzzle.
#### Ogre
The epitome of physical prowess.
#### Draconid
Has a potent array of natural weapons; also more attuned to magic, especially one specific element that differs between Draconids.
#### Naga
Weaker than Orcs, but has natural weapons and poisons as well as greater intelligence.
#### High Elf
Best described as "angelic", High Elves have no equal when it comes to magic.
#### Wood Elf
Agile and slightly tougher than other Elves, but less skilled with magic. Also more skilled with survival, and better with nature in general.
#### Drow
The devils to the High Elves' angels, the Drow excel at utilizing dark forces -- such as that which created the zombies.
### Magic System
#### Mana
Mana is a new resource on top of hunger, thirst, and sleep.
New traits allow interlock between these resources:
* Wizard: "Your knowledge and intelligence has led you to develop science-like methods for using magic. Your Mana is replenished by your Sleep stat."
* Sorcerer: "Forces unknown have granted you great magical power, emanating from your own physical body. Your Mana is replenished by your Hunger and Thirst stats."
* Druid: "Your body has been attuned to nature; the world grants you Mana in random fits and starts."
* Warlock: "Through deep concentration, you have attuned your mind to resonate with the magic that has been introduced to the world. Your Mana slowly but steadily refills over time."
* Atronach: "Your body has been attuned to magic itself; you can restore your Mana by killing creatures or absorbing it from artifacts."
#### Using Magic
##### Spells
##### Scrolls
Scrolls are single spell casts infused on paper, along with most of the mana required to cast them. These cost more mana than a spell cast, decreasing with [some stat].
##### Enchanting
##### Artifacts
Artifacts are "skinned" scrolls and enchanted objects that can be randomly found in the world or on NPCs, with powerful effects.
Artifacts can be researched to gain skill or recipes (and potentially destroy the item!).
##### Magical Research
Mana traits give bonuses to different matching types of research. An Atronach can learn more about magic by absorbing magic; a Warlock can learn more slowly by simply being around high concentrations of magic; a Druid learns more randomly; a Sorcerer learns by casting; a Wizard learns more by directly researching items and studying.
## Minor Features
These can be partially implemented without much effort, disregarding dependencies on major features (which need not be added immediately).
### Gear Modification
Gear can now be modified to fit mutations by expending materials and a crafting tool.
### Jury-Rigging
Flag some items as "Jury-Rigged"; the RES substat affects these items' stats, usability by player, crafting unlock...
### Fog-of-War Memory
Make areas on the main game screen remain visible under fog-of-war for some time after leaving, depending on MEM substat. This acts as a fixed-tile-count trail behind the player.
### "Crystalline" mutline
### Quick Comparison for picking up equipped/worn items (+x/-x next to stats, *x for new stats and ~x for removed stats?)
### Audio
Add sound cues for crafting, movement, ambient sources...
#### Crafting
Separate noises for different crafting stage types (sawing, cooking, hammering...)
#### Movement
Various footstep sounds
#### Combat
#### Ambient
#### Other Actions
### More advanced chemical processes
e.g. ammonia generation/refinement, glassmaking from ash/potash, manual creation of reactors in lategame, mining and refinement of ore (surveying?)
### Sifting/sieving/panning
### Jurassic Park-style research of fossils, genetic manipulation
### Taming (and possibly mutation) of other creatures
Because pet ultramoose!!!
### Shore up NPC behavior
Allow designation of vehicle spots?
Let NPCs in your "party" be given tasks, e.g. crafting something while resources are present in a certain inventory, or patrolling around a vehicle while stopped... automatically curing hides and unrolling finished product? Hunting?
### More advanced drones capable of more complex interactions
As far as Turtles in the ComputerCraft Minecraft mod? May be another solution to the autocrafting problem proposed above for NPCs
### AI Interaction
Expand the range of in-world interaction menus (unload nearby, read nearby...), and move the player to further items automatically.
### "Explored territory" marker on map, minimap, ingame...
### Language system (directly add/add-on to race system)?
### More NPCs, different races, establish relations with different races... keep cities inhabited?
### Forts and such for new races
Dwarf Fortress: zombie edition!
### "Spice of life" bonus for eating different foods/penalty for eating too much of same food, without being so complex as the nutrition feature
### New Items
#### Baited animal/fish traps (if not present already)
#### Shields
#### Sling (if not present already)
### Feature changes/removals
Overrides undesired changes made in previous C:DDA patches, or adds changes that are pretty much completely just cheats.
#### "Unpackage All" command for powders, chips, etc. in inventory
#### Autoloot, including for the above unpackage option
Autoread+grab unread books?
#### Add lab access to some professions?
Revamp ID cards? Maybe infinite uses as long as computers/some disguise-related skill holds up -- system may require retinal scan, or just have AI that may or may not recognize the wrong person holding an ID card
#### Two-way Metabolic Interchange CBM
Allow Metabolic Interchange to refill hunger from excess power.
#### Remove CBM Painkiller Requirement (option)
Idea from Coolthulhu's Patches
#### Make ranged accuracy fall off slower
Idea from Coolthulhu's Patches (normal distrib.?)
#### Allow distant viewing of items on tables, beds, etc.
Depend on a Perception substat?
#### Single-target admin kill command (because I like cheating)
#### NPC aggression/difficulty option in worldgen
#### Vehicle health/durability option in worldgen; no-vehicle-damage mod?
## Behind-the-scenes
Support features or stages required for other planned features
### Elemental resistances/effects
### 3D rendering library
Just plain OpenGL?
## Various Notes
- Allow crafting in dark with higher stats req/fail chance? Or with mutations?
- Allow refilling vehicle tanks from stored items (e.g. in cargo space)? May just be that the refill option doesn't detect Gasoline Lantern
### on New Mutations for races, etc. and spell effects
Arcanavore: Able to eat magical items for sustenance.
Infernal Metabolism: Able to eat just about anything for sustenance (similar to Internal Furnace CBM).
Crystalline Flesh: Increased durability against cutting and piercing damage, immunity to just about every exotic effect, but *greatly increased* damage taken from bashing sources.