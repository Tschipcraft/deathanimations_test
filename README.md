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

## Roadmap

This is the second development version of Death Animations v2.0 for Minecraft 1.19

✔️ **Implemented:**
- Rewrite of body part system
-> Unique id assigning now counts upwards
-> Id finding now uses predicates instead of functions making it faster
-> Functions are now more documented than in any other data pack made by me
- Generate models with a custom script, making it easier to add new mobs and avoiding errors like unintentional offsets to the ground
- Take the pushers motion data into account for body part push calculations
- Evaluate tracked projectiles where they hit the entity, making more powerful Head-, Arm-, Leg- and Torsoshots possible (knockback)
- New animations for frogs, tadpoles and snow golems
- Updated tag lists for 1.19
- Offset adjustments

📜 **Planned (not yet implemented):**
- Core adjustments
- Randomized body part rotations
- Making body parts spin on the z axis, making them have 3dof
- Ragdolls
- Custom body part hit sound
- Replace hardcoded materials
-> Option for using player heads only?
-> Goat Horn
-> Material mixing for head items (no use)/skeleton body (bonemeal)
- Special nbt heritage for mob variants/saddles
- Axis lock system for special body part forms
- Special animations for Blaze + Enderman
- Bug fixing
- Performance
- New icon

The roadmap can also be viewed on my [website](https://tschipcraft.ddns.net/en/deathanimations-experimental.html)


## Features

Mobs have new, _epic_ animations when they die.

**Works with:**
Zombies, Husks, Skeletons, Strays, Creepers, Drowned, Spiders, Cave Spiders, Phantoms, Enderman, (Villagers), Pillagers, Evokers, Vindicators, Illusioners, Piglins, Piglin Brutes, Zombified Piglins, Pigs, Cows, Chicken, Sheep, Frogs, Tadpoles, Fish, Snow Golem, (Iron Golem), (Ravagers), (Endermites).

Most body parts can be picked up with a right-click.
You can also use them in workbenches or even eat them.

(Unique animations will be available for Iron Golems, Phantoms, Blazes, Enderman, Endermites and Ravagers.)

Make sure to adjust the data pack for your needs by opening the settings (`/trigger settings`)


## Installation

Download the latest release from [here](https://github.com/Tschipcraft/deathanimations_test/releases/latest). Put the datapack .zip file into the `datapacks` folder of your Minecraft world and the assetpack .zip file into your resourcepacks folder. Make sure to activate the resourcepack before using


## Issues

This edition likely houses many bugs. If you encounter one, feel free to submit a issue.
