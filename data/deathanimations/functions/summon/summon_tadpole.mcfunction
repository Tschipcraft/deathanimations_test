## by Tschipcraft - auto-generated

# Torso
execute rotated ~ 0 positioned ~ ~ ~ run summon minecraft:armor_stand ^0.0 ^0.06 ^0.0 {CustomName:'{"text":"Tadpole Torso"}',Tags:[bodypart,init],Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1b,DisabledSlots:4144959,Pose:{Body:[0f,90f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f]}}
execute rotated ~ 0 positioned ~ ~-1.4 ~ run summon minecraft:armor_stand ^0.0 ^0.06 ^0.0 {CustomName:'{"text":"Tadpole Torso"}',Tags:[visual,init,dea_tadpole,torso,no_particle,da_bp_1.5x,da_bp_1.0y,da_bp_1.5z,da_bn_-1.5x,da_bn_-1.0y,da_bn_-1.5z],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{da_drop:1,CustomModelData:44,display:{Name:"{\"text\":\"Tadpole Torso\",\"italic\":false}"}}}],Pose:{Head:[1f,1f,1f],Body:[0f,90f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f]},Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Silent:1b,NoGravity:1b,DisabledSlots:4140800,Rotation:[180f,0f]}
function deathanimations:general/assign_id

# Tail
execute rotated ~ 0 positioned ~ ~ ~ run summon minecraft:armor_stand ^0.0 ^0.06 ^0.31 {CustomName:'{"text":"Tadpole Tail"}',Tags:[bodypart,init],Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Small:1b,Silent:1b,DisabledSlots:4144959,Pose:{Body:[0f,90f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f]}}
execute rotated ~ 0 positioned ~ ~-1.4 ~ run summon minecraft:armor_stand ^0.0 ^0.06 ^0.31 {CustomName:'{"text":"Tadpole Tail"}',Tags:[visual,init,dea_tadpole,tail,no_particle,da_bp_0.0x,da_bp_1.0y,da_bp_3.5z,da_bn_0.0x,da_bn_-1.0y,da_bn_-3.5z],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{da_drop:1,CustomModelData:45,display:{Name:"{\"text\":\"Tadpole Tail\",\"italic\":false}"}}}],Pose:{Head:[1f,1f,1f],Body:[0f,90f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f]},Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Silent:1b,NoGravity:1b,DisabledSlots:4140800,Rotation:[180f,0f]}
function deathanimations:general/assign_id


#particle minecraft:$PARTICLE ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]

## Special nbt
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] da_id 1
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] da_id 1
function deathanimations:summon/special_nbt

## Rotation
data modify storage d_a:bodypart rotation set from entity @s Rotation[0]
execute as @e[type=armor_stand,tag=visual,scores={da_id=1}] store result entity @s Rotation[0] float 1 run data get storage d_a:bodypart rotation

kill @s[type=!player]
