## by Tschipcraft - auto-generated

# Head
execute rotated ~ 0 positioned ~ ~ ~ run summon minecraft:armor_stand ^-0.0 ^0.13 ^0.09 {CustomName:'{"text":"Cod Head"}',Tags:[bodypart,init],Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1b,DisabledSlots:4144959,Pose:{Body:[0f,90f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f]}}
execute rotated ~ 0 positioned ~ ~-1.4 ~ run summon minecraft:armor_stand ^-0.0 ^0.13 ^0.09 {CustomName:'{"text":"Cod Head"}',Tags:[visual,init,dea_cod,head,no_particle,da_bp_1.0x,da_bp_2.0y,da_bp_1.5z,da_bn_-1.0x,da_bn_-2.0y,da_bn_-1.5z],ArmorItems:[{},{},{},{id:"minecraft:cod",Count:1b,tag:{da_drop:1,CustomModelData:1,display:{Name:"{\"text\":\"Cod Head\",\"italic\":false}"}}}],Pose:{Head:[1f,1f,1f],Body:[0f,90f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f]},Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Silent:1b,NoGravity:1b,DisabledSlots:4140800,Rotation:[1f,0f]}
function deathanimations:general/assign_id

# Torso
execute rotated ~ 0 positioned ~ ~ ~ run summon minecraft:armor_stand ^-0.0 ^0.16 ^-0.31 {CustomName:'{"text":"Cod Torso"}',Tags:[bodypart,init],Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1b,DisabledSlots:4144959,Pose:{Body:[0f,90f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f]}}
execute rotated ~ 0 positioned ~ ~-1.4 ~ run summon minecraft:armor_stand ^-0.0 ^0.16 ^-0.31 {CustomName:'{"text":"Cod Torso"}',Tags:[visual,init,dea_cod,torso,no_particle,da_bp_1.0x,da_bp_1.5y,da_bp_2.0z,da_bn_-1.0x,da_bn_-2.5y,da_bn_-5.0z],ArmorItems:[{},{},{},{id:"minecraft:cod",Count:1b,tag:{da_drop:1,CustomModelData:2,display:{Name:"{\"text\":\"Cod Torso\",\"italic\":false}"}}}],Pose:{Head:[1f,1f,1f],Body:[0f,90f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f]},Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Silent:1b,NoGravity:1b,DisabledSlots:4140800,Rotation:[1f,0f]}
function deathanimations:general/assign_id


#particle minecraft:$PARTICLE ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]

## Special nbt
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] da_id 1
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] da_id 1
function deathanimations:summon/special_nbt

kill @s[type=!player]
