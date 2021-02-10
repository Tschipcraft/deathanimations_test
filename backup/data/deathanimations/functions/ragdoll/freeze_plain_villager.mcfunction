## by Tschipcraft


execute as @s[tag=ragdoll_torso_visual] at @s run summon minecraft:armor_stand ~ ~0.1 ~ {Tags:[ragdoll_visual_nom,adjust,ragdoll_torso_nom,ragdoll_plain_villager],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:70}}],Rotation:[1f,-90f],Silent:1,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{Head:[1f,1f,1f]},DisabledSlots:4144959}
execute as @e[tag=adjust] at @s store result entity @s Pose.Head[0] float 1 run data get entity @e[tag=ragdoll,limit=1,sort=nearest] Rotation[1] 1
execute as @e[tag=adjust] at @s store result entity @s Pose.Head[1] float 1 run data get entity @e[tag=ragdoll,limit=1,sort=nearest] Rotation[0] 1
tag @e[tag=adjust] remove adjust
execute as @s[tag=ragdoll_torso_visual] at @s run function deathanimations:kill_e

execute as @s[tag=ragdoll_head_visual] at @s run summon minecraft:armor_stand ~ ~0.1 ~ {Tags:[ragdoll_visual_nom,adjust],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:73}}],Rotation:[1f,-90f],Silent:1,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{Head:[1f,1f,1f]},DisabledSlots:4144959}
execute as @e[tag=adjust] at @s store result entity @s Pose.Head[0] float 1 run data get entity @e[tag=ragdoll,limit=1,sort=nearest] Rotation[1] 1
execute as @e[tag=adjust] at @s store result entity @s Pose.Head[1] float 1 run data get entity @e[tag=ragdoll,limit=1,sort=nearest] Rotation[0] 1
tag @e[tag=adjust] remove adjust
execute as @s[tag=ragdoll_head_visual] at @s run function deathanimations:kill_e

execute as @s[tag=ragdoll_left_leg_visual] at @s run summon minecraft:armor_stand ~ ~0.1 ~ {Tags:[ragdoll_visual_nom,adjust],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:71}}],Rotation:[1f,-90f],Silent:1,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{Head:[1f,1f,1f]},DisabledSlots:4144959}
execute as @e[tag=adjust] at @s store result entity @s Pose.Head[0] float 1 run data get entity @e[tag=ragdoll,limit=1,sort=nearest] Rotation[1] 1
execute as @e[tag=adjust] at @s store result entity @s Pose.Head[1] float 1 run data get entity @e[tag=ragdoll,limit=1,sort=nearest] Rotation[0] 1
tag @e[tag=adjust] remove adjust
execute as @s[tag=ragdoll_left_leg_visual] at @s run function deathanimations:kill_e

execute as @s[tag=ragdoll_right_leg_visual] at @s run summon minecraft:armor_stand ~ ~0.1 ~ {Tags:[ragdoll_visual_nom,adjust],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:71}}],Rotation:[1f,-90f],Silent:1,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{Head:[1f,1f,1f]},DisabledSlots:4144959}
execute as @e[tag=adjust] at @s store result entity @s Pose.Head[0] float 1 run data get entity @e[tag=ragdoll,limit=1,sort=nearest] Rotation[1] 1
execute as @e[tag=adjust] at @s store result entity @s Pose.Head[1] float 1 run data get entity @e[tag=ragdoll,limit=1,sort=nearest] Rotation[0] 1
tag @e[tag=adjust] remove adjust
execute as @s[tag=ragdoll_right_leg_visual] at @s run function deathanimations:kill_e


kill @s[tag=!Invisible]
execute as @s[tag=ragdoll_prepare] at @s run function deathanimations:kill_e
