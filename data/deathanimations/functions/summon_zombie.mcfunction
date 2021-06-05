## by Tschipcraft

# Arms
execute as @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^0.3 ^ ^0.3 {Tags:[bodypart,arm,bloody,zombiecheck],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^0.3 ^ ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Zombie Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,bloody,zombiecheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1
execute as @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^-0.3 ^ ^0.3 {Tags:[bodypart,arm,bloody,zombiecheck],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^-0.3 ^ ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"Zombie Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,bloody,zombiecheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1

# Legs
execute as @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.15 ^ ^ {Tags:[bodypart,leg,zombiebody,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.15 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:4,display:{Name:"{\"text\":\"Zombie Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,zombiebody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1
execute as @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.15 ^ ^ {Tags:[bodypart,leg,zombiebody,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.15 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:4,display:{Name:"{\"text\":\"Zombie Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,zombiebody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1

# Torso
execute as @s positioned ~ ~0.30 ~ run summon minecraft:armor_stand ^ ^ ^ {Tags:[bodypart,zombiebody,torso,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s positioned ~ ~-0.10 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:2,display:{Name:"{\"text\":\"Zombie Torso\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,zombiebody,torso,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1

# Head
execute as @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^ ^ ^ {OnGround:0b,Tags:[bodypart,zombiebody,head,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1}],NoGravity:1,Tags:[visual,zombiebody,head,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1

execute as @s run particle minecraft:item redstone_block ~ ~1 ~ 0 0.3 0 0.1 100 normal @a[scores={blood_local=1}]

#summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[0.2,0.4,0.0]}
#summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[-0.2,0.4,0.0]}
#summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[0.0,0.4,0.2]}
#summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[0.0,0.4,-0.2]}
#summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[0.1,0.4,0.1]}
#summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[-0.1,0.4,-0.1]}
#summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[0.1,0.4,-0.1]}
#summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[-0.1,0.4,0.1]}

execute as @s at @s if entity @s[scores={OnFire=1}] run particle minecraft:block magma_block ~ ~1 ~ 0.2 0.4 0.2 0 300 normal
execute as @s at @s if entity @s[scores={OnFire=1}] run particle minecraft:falling_dust obsidian ~ ~1 ~ 0.2 0.5 0.2 0 250 normal
execute as @s at @s if entity @s[scores={OnFire=1}] run playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~

## rotation
#tag @s add rotation_c
#execute as @e[tag=visual,distance=..10] unless entity @s[scores={age=1..}] at @s rotated as @e[tag=rotation_c,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
##execute as @s at @s as @e[tag=visual,distance=..10] unless entity @s[scores={age=1..}] at @s store result entity @s Rotation[0] float 1 run data get entity @e[tag=rotation_c,sort=nearest,limit=1] Rotation[0] 1

## Items
execute as @s run function deathanimations:summon/items

## Special nbt
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] da_id 1
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] da_id 1
function deathanimations:summon/special_nbt

#execute as @e[type=minecraft:item,nbt={Item:{tag:{da_death_detect:1b,da_entity:zombie}}}] run function deathanimations:summon/special_nbt

##function deathanimations:summon_soul

kill @s[type=!player]
