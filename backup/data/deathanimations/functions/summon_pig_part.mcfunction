## by Tschipcraft

# Legs
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.15 ^ ^-0.15 {Small:1b,Tags:[bodypart,leg,pigbody,bloody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.15 ^ ^-0.15 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:porkchop",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Pig Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,pigbody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.15 ^ ^-0.15 {Small:1b,Tags:[bodypart,leg,pigbody,bloody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.15 ^ ^-0.15 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:porkchop",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Pig Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,pigbody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.15 ^ ^0.15 {Small:1b,Tags:[bodypart,leg,pigbody,bloody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.15 ^ ^0.15 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:porkchop",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Pig Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,pigbody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.15 ^ ^0.15 {Small:1b,Tags:[bodypart,leg,pigbody,bloody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.15 ^ ^0.15 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:porkchop",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Pig Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,pigbody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Torso
execute as @s at @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^ ^ ^-0.2 {Small:1b,Tags:[bodypart,pigbody,torso,bloody,big_torso],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.8 ~ run summon minecraft:armor_stand ^ ^ ^-0.2 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:porkchop",Count:1,tag:{da_drop:1,CustomModelData:2,display:{Name:"{\"text\":\"Pig Torso\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,pigbody,torso,bloody,big_torso],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Head
execute as @s at @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,pigbody,head,bloody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.8 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:porkchop",Count:1,tag:{da_drop:1,CustomModelData:1,display:{Name:"{\"text\":\"Pig Head\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,pigbody,head,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
particle minecraft:block redstone_block ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]

## rotation
tag @s add rotation_c
execute as @s at @s as @e[tag=visual,distance=..10] unless entity @s[scores={age=1..}] at @s store result entity @s Rotation[0] float 1 run data get entity @e[tag=rotation_c,sort=nearest,limit=1] Rotation[0] 1


kill @s[type=!player]
