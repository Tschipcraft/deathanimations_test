#execute as @e[tag=ragdoll] at @s run function deathanimations:ragdoll_freeze

summon minecraft:armor_stand ~ ~ ~ {Silent:1,Invisible:1,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_core]}

#summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[ragdoll_zombie,ragdoll,ragdoll_center,ragdoll_center-all-parts],Radius:0f,RadiusPerTick:0f,Duration:2000}
summon minecraft:armor_stand ~ ~ ~ {Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_center,ragdoll_center-all-parts]}
summon minecraft:armor_stand ~ ~0.2 ~ {Silent:1,Invisible:1,NoGravity:0,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_torso,ragdoll_part-all-parts]}
summon minecraft:zombie ~ ~-1.7 ~ {IsBaby:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_torso_visual_prepare,Invisible,exclude,ragdoll_prepare],NoAI:1,Silent:1}
summon minecraft:zombie ~ ~-1.7 ~ {Tags:[ragdoll_zombie,ragdoll,ragdoll_torso_visual,Invisible,exclude],NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:10}}],Rotation:[1f,-90f],Silent:1}

#summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[ragdoll_zombie,ragdoll,ragdoll_head_center,ragdoll_center-all-parts],Radius:0f,RadiusPerTick:0f,Duration:2000}
summon minecraft:armor_stand ~ ~0.6 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_head_center,ragdoll_center-all-parts]}
summon minecraft:armor_stand ~ ~0.8 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:0,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_head,ragdoll_part-all-parts]}
summon minecraft:zombie ~ ~-1 ~ {IsBaby:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_head_visual_prepare,Invisible,exclude,ragdoll_prepare],NoAI:1,Silent:1}
summon minecraft:zombie ~ ~-1 ~ {Tags:[ragdoll_zombie,ragdoll,ragdoll_head_visual,Invisible,exclude],NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:13}}],Rotation:[1f,-90f],Silent:1}


execute positioned ^-0.35 ^ ^-0.15 run summon minecraft:armor_stand ~ ~0.3 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_arm_center,ragdoll_center-all-parts]}
execute positioned ^-0.35 ^ ^0.15 run summon minecraft:armor_stand ~ ~0.3 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:0,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_arm,ragdoll_part-all-parts]}
execute positioned ^-0.35 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.2 ~ {IsBaby:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_arm_visual_prepare,Invisible,exclude,ragdoll_prepare],NoAI:1,Silent:1}
execute positioned ^-0.35 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.2 ~ {Tags:[ragdoll_zombie,ragdoll,ragdoll_right_arm_visual,Invisible,exclude],NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:11}}],Rotation:[1f,1f],Silent:1}

execute positioned ^0.35 ^ ^-0.15 run summon minecraft:armor_stand ~ ~0.3 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_arm_center,ragdoll_center-all-parts]}
execute positioned ^0.35 ^ ^0.15 run summon minecraft:armor_stand ~ ~0.3 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:0,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_arm,ragdoll_part-all-parts]}
execute positioned ^0.35 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.2 ~ {IsBaby:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_arm_visual_prepare,Invisible,exclude,ragdoll_prepare],NoAI:1,Silent:1}
execute positioned ^0.35 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.2 ~ {Tags:[ragdoll_zombie,ragdoll,ragdoll_left_arm_visual,Invisible,exclude],NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:11}}],Rotation:[1f,1f],Silent:1}


execute positioned ^-0.15 ^ ^-0.15 run summon minecraft:armor_stand ~ ~-0.2 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_leg_center,ragdoll_center-all-parts]}
execute positioned ^-0.15 ^ ^-0.15 run summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:0,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_leg,ragdoll_part-all-parts]}
execute positioned ^-0.15 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.8 ~ {IsBaby:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_leg_visual_prepare,Invisible,exclude,ragdoll_prepare],NoAI:1,Silent:1}
execute positioned ^-0.15 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.8 ~ {Tags:[ragdoll_zombie,ragdoll,ragdoll_right_leg_visual,Invisible,exclude],NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:12}}],Rotation:[1f,90f],Silent:1}

execute positioned ^0.15 ^ ^-0.15 run summon minecraft:armor_stand ~ ~-0.2 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_leg_center,ragdoll_center-all-parts]}
execute positioned ^0.15 ^ ^-0.15 run summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:0,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_leg,ragdoll_part-all-parts]}
execute positioned ^0.15 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.8 ~ {IsBaby:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_leg_visual_prepare,Invisible,exclude,ragdoll_prepare],NoAI:1,Silent:1}
execute positioned ^0.15 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.8 ~ {Tags:[ragdoll_zombie,ragdoll,ragdoll_left_leg_visual,Invisible,exclude],NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:12}}],Rotation:[1f,90f],Silent:1}



summon minecraft:armor_stand ~ ~0.8 ~ {Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_head_part]}
summon minecraft:armor_stand ~ ~0.3 ~ {Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_arm_part]}
summon minecraft:armor_stand ~ ~0.3 ~ {Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_arm_part]}
summon minecraft:armor_stand ~ ~-0.5 ~ {Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_leg_part]}
summon minecraft:armor_stand ~ ~-0.5 ~ {Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_leg_part]}


team join NoCollision @e[tag=ragdoll]
scoreboard players add @e[tag=ragdoll] correction 1
scoreboard players add @e[tag=ragdoll,scores={correction=1}] age 3


kill @e[tag=ragdoll_visual_nom,tag=!ragdoll_torso_nom,distance=..4]

kill @s[type=!player]
