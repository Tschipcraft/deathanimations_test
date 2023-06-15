<h1 align="center">
  <img src="/pack.png" width="64" height="64"><br/>
  Death Animations v2.0 Test Branch
</h1>
<p align="center">
  <a href="https://github.com/Tschipcraft/deathanimations_test/stargazers"><img src="https://img.shields.io/github/stars/Tschipcraft/deathanimations_test?style=for-the-badge&colorB=d100ff"></a>
  <a href="https://github.com/Tschipcraft/deathanimations_test/releases/latest"><img src="https://img.shields.io/github/downloads/Tschipcraft/deathanimations_test/total?logo=github&style=for-the-badge&colorB=d100ff"></a>
</p>

> A data pack for Minecraft 1.19x

### ⚠ THIS IS A DEVELOPMENT EDITION! BUGS MAY OCCUR! DO NOT USE WITHOUT BACKUP!

### I'm currently working on a better ragdoll system behind the scenes. It is still in its early stages, so this may take some time.

## Roadmap

This is the third development version of Death Animations v2.0 for Minecraft 1.19

✔️ **Implemented:**
- [x] Rewrite of body part system
  - [x] Unique id assigning now counts upwards
  - [x] Id finding now uses predicates instead of functions making it faster
- [x] Generate models with a custom program, making it easier to add new mobs and avoiding errors like unintentional offsets to the ground
- [x] Take the pushers motion data into account for body part push calculations
- [x] Evaluate tracked projectiles where they hit the entity, making more powerful Head-, Arm-, Leg- and Torsoshots possible (knockback)
- [x] New animations for frogs, turtles, fish, tadpoles and snow golems
- [x] Updated tag lists for Minecraft 1.19
- [x] Offset adjustments
- [x] Different blood particles for body parts inside water
- [x] More factors for applied motion:
    Body parts will now take the following factors for their motion/momentum into account:
  - [x] Motion from the dead mob [!NEW]
  - [x] Motion from the killer entity [!NEW]
  - [x] Motion from the new swing momentum entity [Players only] [!NEW]
  - [x] Custom motion parameters depending on the situation
- [x] Fixed bugs:
  - [x] https://github.com/Tschipcraft/deathanimations_test/issues/1 Fixed incompatibility with Minecraft 1.19.3 due to resource pack loading changes
  - [x] Fixed incorrect loot table
  - [x] Fixed vanilla heads not being decoded and encoded correctly
  - [x] Fixed incorrect angled body parts in low_p_mode
  - [x] Fixed choppy rotation reset
  - [x] Fixed broken inherited rotation

📜 **Planned (not yet implemented):**
- [ ] Ragdoll system
  - [ ] Replace already established body part system with more accurate ragdoll system?
- [ ] Inherit killer position using loot tables
- [ ] Use new display and interaction entities
  - [ ] Maybe implement less ticked body parts by using interpolation (far away body parts update every 5 ticks?)
  - [ ] New disappear animation/smoother special animations
  - [ ] Support for baby mobs
- [ ] Calculated or randomized body part rotations
- [ ] Making body parts spin on the z axis, making them have 3dof
- [ ] Custom particle system for blood?
- [ ] Player Death Animations
- [ ] Custom body part hit sound
- [ ] Replace hardcoded materials
  - [ ] Option for using player heads only?
  - [ ] Goat Horn
  - [ ] Material mixing for head items (no use)/skeleton body (bonemeal)
- [ ] Special NBT heritage for mob variants/saddles
- [ ] Axis lock system for special body part forms
- [ ] Special animations for Blaze, Enderman, Ghast and Guardian
- [ ] Adapt to [Smithed Conventions](https://wiki.smithed.dev/conventions/) for data pack compatibility
- [ ] Fix bugs
- [ ] Improve Performance
- [ ] New icon
- [ ] Backwards compatibility

A not so frequently updated roadmap can also be viewed on my [website](https://tschipcraft.ddns.net/en/deathanimations-experimental.html)


## Features

Mobs have new, _epic_ animations when they die.

**Works with:**
Zombies, Husks, Skeletons, Strays, Creepers, Drowned, Spiders, Cave Spiders, Phantoms, Enderman, (Villagers), Pillagers, Evokers, Vindicators, Illusioners, Piglins, Piglin Brutes, Zombified Piglins, Pigs, Cows, Chicken, Sheep, Frogs, Tadpoles, Fish, Snow Golem, (Iron Golem, Ravagers, Endermites - soon).

Most body parts can be picked up with a right-click.
You can also use them inside a crafting table or even eat them.

(Unique animations will be available for Iron Golems, Phantoms, Blazes, Enderman, Endermites and Ravagers. - soon)

Make sure to adjust the data pack for your needs by opening the settings (`/trigger settings`)


## Installation

Download the latest release from [here](https://github.com/Tschipcraft/deathanimations_test/releases/latest). Put the data pack .zip file into the `datapacks` folder of your Minecraft world and the assetpack .zip file into your `.minecraft/resourcepacks` folder. Make sure to activate the resource pack and data pack ingame.


## Issues 🐱‍👤

This edition likely houses many bugs. If you encounter one, feel free to submit a issue.
