#### by Tschipcraft

### welcome & Menu
# now in /loops

### General
## auto crafting
execute if score Global auto_crafting matches 1 if score Global enable_pickup matches 1 as @a[gamemode=!spectator] run function deathanimations:auto_crafting/core

## reset data pack
scoreboard players add Global age 1
execute if score Global part_lifetime matches ..2 if score Global age matches 1599.. if score Global entity_count matches 0 unless entity @e[type=#deathanimations:marker_entities,tag=endermite] unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] unless entity @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom] run function deathanimations:reset
execute if score Global age matches 1599.. run scoreboard players set Global age 1

execute if score global entity_count matches 100.. run function deathanimations:reset


### Entity Detection
## Detect new entities
# Now in /loops
## Events
execute if score events entity_count matches ..50 as @a[gamemode=!spectator,limit=8,sort=random] at @s run function deathanimations:initalise_events

## Summon body parts

execute as @e[type=#deathanimations:marker_entities,tag=death_detection,limit=150] at @s rotated as @s run function deathanimations:general/detection
execute as @e[type=#deathanimations:marker_entities,tag=death_detection] at @s run function deathanimations:general/special_nbt_detection

## Animationtimer
scoreboard players add @e[type=#deathanimations:marker_entities] cooldown 0

### Bodyparts/Animations
execute at @r as @e[type=#deathanimations:marker_entities,tag=!death_detection,tag=!ragdoll,tag=!ragdoll_visual_nom,sort=nearest] at @s run function deathanimations:main

## Duration
execute store result score global entity_count run execute if entity @e[type=#deathanimations:marker_entities,tag=bodypart]
execute if score Global part_lifetime matches 0 run function deathanimations:bodypart_durations/short
execute if score Global part_lifetime matches 1 run function deathanimations:bodypart_durations/normal
execute if score Global part_lifetime matches 2 run function deathanimations:bodypart_durations/long
execute if score Global part_lifetime matches 3 run function deathanimations:bodypart_durations/infinite

## Special Animations
## Iron Golem death animation
execute as @e[type=#deathanimations:marker_entities,tag=iron_golem_death] at @s run function deathanimations:general/animation/iron_golem

## Ravager death animation
execute as @e[type=#deathanimations:marker_entities,tag=ravager_death] at @s run function deathanimations:general/animation/ravager


## Phantom
execute at @r as @e[type=phantom,tag=explode,sort=nearest,limit=6] run function deathanimations:animation/phantom

## Endermite
execute if entity @e[type=#deathanimations:marker_entities,tag=endermite] as @a[nbt={Inventory:[{id:"minecraft:chorus_fruit",tag:{CustomModelData:3}}]}] at @s run function deathanimations:replace


### Ragdolls
execute if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] run function deathanimations:ragdoll_core

## ragdolls
execute if score Global part_lifetime matches ..2 run scoreboard players add @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom] timeout_parts 1
execute if score Global part_lifetime matches 2.. run scoreboard players add @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom] timeout_parts 0

execute as @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom] at @s run function deathanimations:ragdoll/nomotion

### Arrows
## Ragdoll on bow shot
execute as @e[type=#deathanimations:marker_entities,tag=death_detection,tag=!arrowed] at @s if entity @e[tag=arrow,distance=..4] run tag @s add arrowed
execute as @e[type=#deathanimations:marker_entities,tag=death_detection,tag=arrowed] at @s unless entity @e[tag=arrow,distance=..4] run tag @s remove arrowed

execute as @e[type=minecraft:arrow] at @s if entity @e[type=#deathanimations:marker_entities,tag=death_detection,distance=..3,tag=!skeleton_death,tag=!wither_skeleton_death,tag=!spider_death,tag=!cave_spider_death,tag=!stray_death] unless entity @s[nbt={inGround:1b}] run particle minecraft:item minecraft:redstone_block ~ ~ ~ 0 0 0 0.1 10 normal @a[scores={blood_local=1}]
execute as @e[type=minecraft:arrow] at @s if entity @e[type=#deathanimations:marker_entities,tag=death_detection,distance=..3,tag=spider_death] unless entity @s[nbt={inGround:1b}] run particle minecraft:item_slime ~ ~ ~ 0 0 0 0.1 10 normal @a[scores={blood_local=1}]
execute as @e[type=minecraft:arrow] at @s if entity @e[type=#deathanimations:marker_entities,tag=death_detection,distance=..3,tag=cave_spider_death] unless entity @s[nbt={inGround:1b}] run particle minecraft:item_slime ~ ~ ~ 0 0 0 0.1 10 normal @a[scores={blood_local=1}]


### Explosions
