## by Tschipcraft


execute as @s[tag=ragdoll_torso_visual] at @s run summon minecraft:armor_stand ~ ~0.1 ~ {Tags:[ragdoll_visual_nom,adjust,ragdoll_torso_nom,ragdoll_zombie],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:10}}],Rotation:[1f,-90f],Silent:1,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{Head:[1f,1f,1f]},DisabledSlots:4144959}
execute store result entity @e[type=minecraft:armor_stand,tag=adjust,sort=nearest,limit=1] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
execute store result entity @e[type=minecraft:armor_stand,tag=adjust,sort=nearest,limit=1] Pose.Head[1] float 1 run data get entity @s Rotation[0] 1


execute as @s[tag=ragdoll_torso_visual] at @s run function deathanimations:kill_e

execute as @s[tag=ragdoll_head_visual] at @s run summon minecraft:armor_stand ~ ~0.1 ~ {Tags:[ragdoll_visual_nom,adjust],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:13}}],Rotation:[1f,-90f],Silent:1,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{Head:[1f,1f,1f]},DisabledSlots:4144959}
execute store result entity @e[type=minecraft:armor_stand,tag=adjust,sort=nearest,limit=1] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
execute store result entity @e[type=minecraft:armor_stand,tag=adjust,sort=nearest,limit=1] Pose.Head[1] float 1 run data get entity @s Rotation[0] 1

execute as @s[tag=ragdoll_head_visual] at @s run function deathanimations:kill_e

execute as @s[tag=ragdoll_right_arm_visual] at @s run summon minecraft:armor_stand ~ ~0.1 ~ {Tags:[ragdoll_visual_nom,adjust],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:11}}],Rotation:[1f,-90f],Silent:1,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{Head:[1f,1f,1f]},DisabledSlots:4144959}
execute store result entity @e[type=minecraft:armor_stand,tag=adjust,sort=nearest,limit=1] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
execute store result entity @e[type=minecraft:armor_stand,tag=adjust,sort=nearest,limit=1] Pose.Head[1] float 1 run data get entity @s Rotation[0] 1

execute as @s[tag=ragdoll_right_arm_visual] at @s run function deathanimations:kill_e

execute as @s[tag=ragdoll_left_arm_visual] at @s run summon minecraft:armor_stand ~ ~0.1 ~ {Tags:[ragdoll_visual_nom,adjust],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:11}}],Rotation:[1f,-90f],Silent:1,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{Head:[1f,1f,1f]},DisabledSlots:4144959}
execute store result entity @e[type=minecraft:armor_stand,tag=adjust,sort=nearest,limit=1] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
execute store result entity @e[type=minecraft:armor_stand,tag=adjust,sort=nearest,limit=1] Pose.Head[1] float 1 run data get entity @s Rotation[0] 1

execute as @s[tag=ragdoll_left_arm_visual] at @s run function deathanimations:kill_e

execute as @s[tag=ragdoll_left_leg_visual] at @s run summon minecraft:armor_stand ~ ~0.1 ~ {Tags:[ragdoll_visual_nom,adjust],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:12}}],Rotation:[1f,-90f],Silent:1,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{Head:[1f,1f,1f]},DisabledSlots:4144959}
execute store result entity @e[type=minecraft:armor_stand,tag=adjust,sort=nearest,limit=1] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
execute store result entity @e[type=minecraft:armor_stand,tag=adjust,sort=nearest,limit=1] Pose.Head[1] float 1 run data get entity @s Rotation[0] 1

execute as @s[tag=ragdoll_left_leg_visual] at @s run function deathanimations:kill_e

execute as @s[tag=ragdoll_right_leg_visual] at @s run summon minecraft:armor_stand ~ ~0.1 ~ {Tags:[ragdoll_visual_nom,adjust],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:12}}],Rotation:[1f,-90f],Silent:1,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{Head:[1f,1f,1f]},DisabledSlots:4144959}
execute store result entity @e[type=minecraft:armor_stand,tag=adjust,sort=nearest,limit=1] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
execute store result entity @e[type=minecraft:armor_stand,tag=adjust,sort=nearest,limit=1] Pose.Head[1] float 1 run data get entity @s Rotation[0] 1

execute as @s[tag=ragdoll_right_leg_visual] at @s run function deathanimations:kill_e


kill @s[tag=!Invisible]
execute as @s[tag=ragdoll_prepare] at @s run function deathanimations:kill_e

scoreboard players add @e[type=armor_stand,tag=ragdoll_visual_nom,tag=adjust] correction 1
tag @e[type=armor_stand,tag=ragdoll_visual_nom,tag=adjust] remove adjust
