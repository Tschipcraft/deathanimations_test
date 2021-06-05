##by Tschipcraft

#summon steve

# Arms
execute as @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^0.3 ^ ^0.3 {Tags:[bodypart,playerbody,arm,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^0.3 ^ ^0.3 {ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"$Player Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,bloody,playerbody],Pose:{Head:[1f,1f,1f]},Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^-0.3 ^ ^0.3 {Tags:[bodypart,playerbody,arm,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^-0.3 ^ ^0.3 {ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:3,display:{Name:"{\"text\":\"$Player Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,bloody,playerbody],Pose:{Head:[1f,1f,1f]},Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Legs
execute as @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.15 ^ ^ {Small:1b,Tags:[bodypart,playerbody,leg,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.15 ^ ^ {ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:4,display:{Name:"{\"text\":\"$Player Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,bloody,playerbody],Pose:{Head:[1f,1f,1f]},Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.15 ^ ^ {Small:1b,Tags:[bodypart,playerbody,leg,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.15 ^ ^ {ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:4,display:{Name:"{\"text\":\"$Player Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,bloody,playerbody],Pose:{Head:[1f,1f,1f]},Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Torso
execute as @s positioned ~ ~0.30 ~ run summon minecraft:armor_stand ^ ^ ^ {Tags:[bodypart,playerbody,torso,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s positioned ~ ~-0.10 ~ run summon minecraft:armor_stand ^ ^ ^ {ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:2,display:{Name:"{\"text\":\"$Player Torso\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,torso,bloody,playerbody],Pose:{Head:[1f,1f,1f]},Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Cape
#execute as @s positioned ~ ~0.30 ~ run summon minecraft:armor_stand ^ ^ ^ {Tags:[bodypart,playerbody,cape,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
#scoreboard players add @e[tag=bodypart] correction 1
#execute as @s positioned ~ ~-0.10 ~ run summon minecraft:armor_stand ^ ^ ^ {ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:2,display:{Name:"{\"text\":\"$Player Cape\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,cape,bloody,playerbody],Pose:{Head:[1f,1f,1f]},Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Silent:1,Invisible:1,DisabledSlots:4140800}
#scoreboard players add @e[tag=visual] correction 1


# Head
execute as @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^ ^ ^ {Tags:[bodypart,playerbody,head,bloody],Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^ ^ ^ {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1}],NoGravity:1,Tags:[visual,head,bloody,playerbody,give_head],Pose:{Head:[1f,1f,1f]},Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

loot replace entity @e[type=minecraft:armor_stand,tag=give_head,scores={correction=1}] armor.head loot deathanimations:head

##summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[0.2,0.4,0.0]}
##summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[-0.2,0.4,0.0]}
##summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[0.0,0.4,0.2]}
##summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[0.0,0.4,-0.2]}
##summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[0.1,0.4,0.1]}
##summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[-0.1,0.4,-0.1]}
##summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[0.1,0.4,-0.1]}
##summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:64},Tags:[blood],PickupDelay:5000,Motion:[-0.1,0.4,0.1]}


particle minecraft:item redstone_block ~ ~1 ~ 0 0.3 0 0.1 100 normal @a[scores={blood_local=1}]

## rotation
tag @s add rotation_c
execute as @e[tag=visual,distance=..10] unless entity @s[scores={age=1..}] at @s rotated as @e[tag=rotation_c,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
##execute as @s at @s as @e[tag=visual,distance=..10] unless entity @s[scores={age=1..}] at @s store result entity @s Rotation[0] float 1 run data get entity @e[tag=rotation_c,sort=nearest,limit=1] Rotation[0] 1
tag @s remove rotation_c


##function deathanimations:summon_soul
