## by Tschipcraft

# Arms
execute as @s at @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^0.4 ^0.1 ^0.3 {Small:1b,Tags:[bodypart,arm,skeletoncheck],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^0.4 ^0.1 ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Skeleton Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,skeletoncheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^-0.4 ^0.1 ^0.3 {Small:1b,Tags:[bodypart,arm,skeletoncheck],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^-0.4 ^0.1 ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Skeleton Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,skeletoncheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Legs
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.30 ^ ^ {Small:1b,Tags:[bodypart,leg,skeletonbody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.30 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:4,display:{Name:"{\"text\":\"Skeleton Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,skeletonbody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.30 ^ ^ {Small:1b,Tags:[bodypart,leg,skeletonbody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.30 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:4,display:{Name:"{\"text\":\"Skeleton Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,skeletonbody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Torso
execute as @s at @s positioned ~ ~0.30 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,skeletonbody,torso],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.10 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:2,display:{Name:"{\"text\":\"Skeleton Torso\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,skeletonbody,torso],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Head
execute as @s at @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,skeletonbody,head],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1}],NoGravity:1,Tags:[visual,skeletonbody,head],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
particle minecraft:block bone_block ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]


##summon area_effect_cloud ~ ~ ~ {Tags:[clearItems],NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:5}

## rotation
tag @s add rotation_c
execute as @s at @s as @e[tag=visual,distance=..10] unless entity @s[scores={age=1..}] at @s store result entity @s Rotation[0] float 1 run data get entity @e[tag=rotation_c,sort=nearest,limit=1] Rotation[0] 1

execute as @s run function deathanimations:summon/items

kill @s[type=!player]
