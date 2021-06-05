## by Tschipcraft

# Legs
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.15 ^ ^-0.15 {Tags:[bodypart,leg,cowbody,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1b,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.15 ^ ^-0.15 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:beef",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Cow Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,cowbody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.15 ^ ^-0.15 {Tags:[bodypart,leg,cowbody,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.15 ^ ^-0.15 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:beef",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Cow Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,cowbody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.15 ^ ^0.15 {Tags:[bodypart,leg,cowbody,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.15 ^ ^0.15 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:beef",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Cow Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,cowbody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.15 ^ ^0.15 {Tags:[bodypart,leg,cowbody,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.15 ^ ^0.15 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:beef",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Cow Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,cowbody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1

# Torso
execute as @s at @s positioned ~ ~0.35 ~ run summon minecraft:armor_stand ^ ^ ^-0.2 {Tags:[bodypart,cowbody,torso,bloody,big_torso],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^ ^ ^-0.2 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:beef",Count:1,tag:{da_drop:1,CustomModelData:2,display:{Name:"{\"text\":\"Cow Torso\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,cowbody,torso,bloody,big_torso],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1

# Head
execute as @s at @s positioned ~ ~0.35 ~ run summon minecraft:armor_stand ^ ^ ^ {Tags:[bodypart,cowbody,head,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:beef",Count:1,tag:{da_drop:1,CustomModelData:1,display:{Name:"{\"text\":\"Cow Head\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,cowbody,head,bloody,small_head],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1


particle minecraft:block redstone_block ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]

scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] da_id 1
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] da_id 1

## rotation
tag @s add rotation_c
execute as @e[type=armor_stand,tag=visual,scores={da_id=1}] at @s store result entity @s Rotation[0] float 1 run data get entity @e[tag=rotation_c,sort=nearest,limit=1] Rotation[0] 1

## Special nbt
execute if entity @s[nbt={Item:{tag:{da_no_knockback:1b}}}] run tag @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] add da_no_knockback
execute if entity @s[nbt={Item:{tag:{da_magic_death:1b}}}] run particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 1 10
execute if entity @s[nbt={Item:{tag:{da_magic_death:1b}}}] run tag @e[type=minecraft:armor_stand,tag=visual,scores={da_id=1}] add da_magical
execute if entity @s[nbt={Item:{tag:{da_projectile_death:1b}}}] run tag @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] add da_projectile_death
execute if entity @s[nbt={Item:{tag:{da_explosion_death:1b}}}] run tag @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] add da_explosion_death
execute if entity @s[nbt={Item:{tag:{da_player_death:1b}}}] run tag @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] add da_player_death

kill @s[type=!player]
