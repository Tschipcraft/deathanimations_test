## by Tschipcraft

# Legs
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.15 ^ ^-0.15 {Tags:[bodypart,leg,sheepbody,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.15 ^ ^-0.15 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:mutton",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Sheep Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,sheepbody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.15 ^ ^-0.15 {Tags:[bodypart,leg,sheepbody,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.15 ^ ^-0.15 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:mutton",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Sheep Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,sheepbody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.15 ^ ^0.15 {Tags:[bodypart,leg,sheepbody,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.15 ^ ^0.15 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:mutton",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Sheep Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,sheepbody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.15 ^ ^0.15 {Tags:[bodypart,leg,sheepbody,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.15 ^ ^0.15 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:mutton",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Sheep Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,sheepbody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1

# Torso
execute as @s at @s positioned ~ ~0.35 ~ run summon minecraft:armor_stand ^ ^ ^-0.2 {Tags:[bodypart,sheepbody,torso,bloody,big_torso],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^ ^ ^-0.2 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:mutton",Count:1,tag:{da_drop:1,CustomModelData:2,display:{Name:"{\"text\":\"Sheep Torso\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,sheepbody,torso,bloody,big_torso],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1

# Head
execute as @s at @s positioned ~ ~0.35 ~ run summon minecraft:armor_stand ^ ^ ^ {Tags:[bodypart,sheepbody,head,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:mutton",Count:1,tag:{da_drop:1,CustomModelData:1,display:{Name:"{\"text\":\"Sheep Head\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,sheepbody,head,bloody,small_head],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1


particle minecraft:block redstone_block ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]

scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] da_id 1
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] da_id 1

## rotation
tag @s add rotation_c
execute as @e[type=armor_stand,tag=visual,scores={da_id=1}] at @s store result entity @s Rotation[0] float 1 run data get entity @e[tag=rotation_c,sort=nearest,limit=1] Rotation[0] 1

## Special nbt
function deathanimations:summon/special_nbt

kill @s[type=!player]
