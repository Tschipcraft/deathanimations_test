<h1 align="center">
  <img src="pack.png" width="64" height="64"><br/>
  Death Animations v2.0 Test Branch
</h1>
<p align="center">
  <a href="https://github.com/Tschipcraft/deathanimations_test/stargazers"><img src="https://img.shields.io/github/stars/Tschipcraft/deathanimations_test?style=for-the-badge&colorB=d100ff"></a>
  <a href="https://github.com/Tschipcraft/deathanimations_test/releases/latest"><img src="https://img.shields.io/github/downloads/Tschipcraft/deathanimations_test/total?logo=github&style=for-the-badge&colorB=d100ff"></a>
</p>

> A data pack for Minecraft

### ⚠ THIS IS A DEVELOPMENT EDITION! BUGS MAY OCCUR! DO NOT USE WITHOUT BACKUP!

## What's been happening?

Due to my limited free time, development of this rather large data pack compared to my other data packs is difficult to fit into my schedule, but rest assured that development has not stopped and this project is still on my list of things I want to finish. Also, due to the (newly) added display entities, I'm tempted to completely rewrite most of the logic of the already established work in this rewrite, which would add another refactor with no results, but may be beneficial to the overall performance of this data pack in the long run.

For upcoming updates, I'm taking a new approach by planning ahead first and splitting the code into modules to make them easier to develop and maintain.

<details>
<summary>I want to help!</summary>

Contributions in form of pull request are at the current time not really feasable.

If you want to support this project, feel free to support me over on Ko-fi, any amount helps.

<a href="https://ko-fi.com/tschipcraft">
<img width="250px" height="40px" title="Support me on Ko-fi to help me keep making epic stuff!" alt="Ko-fi button" src="https://storage.ko-fi.com/cdn/brandasset/kofi_button_red.png">
</a>

</details>

## (Old) Roadmap

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
- [ ] Complete pack restructure
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
- [ ] New icon
- [ ] Improve Performance
- [ ] Backwards compatibility
- [ ] Mod version

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
