## by Tschipcraft

summon minecraft:armor_stand ~ ~ ~ {Silent:1,Invisible:1,Small:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_core]}


summon minecraft:armor_stand ~ ~ ~ {Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll,ragdoll_center,ragdoll_center-all-parts,ragdoll_plain_villager]}
summon minecraft:armor_stand ~ ~0.2 ~ {Silent:1,Invisible:1,NoGravity:0,Small:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_torso,ragdoll_part-all-parts]}
summon minecraft:zombie ~ ~-1.7 ~ {IsBaby:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_torso_visual_prepare,Invisible,exclude,ragdoll_prepare],NoAI:1,Silent:1}
summon minecraft:zombie ~ ~-1.7 ~ {Tags:[ragdoll_plain_villager,ragdoll,ragdoll_torso_visual,Invisible,exclude],NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:70}}],Rotation:[1f,-90f],Silent:1}


summon minecraft:armor_stand ~ ~0.6 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_head_center,ragdoll_center-all-parts]}
summon minecraft:armor_stand ~ ~0.8 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:0,Small:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_head,ragdoll_part-all-parts]}
summon minecraft:zombie ~ ~-1 ~ {IsBaby:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_head_visual_prepare,Invisible,exclude,ragdoll_prepare],NoAI:1,Silent:1}
summon minecraft:zombie ~ ~-1 ~ {Tags:[ragdoll_plain_villager,ragdoll,ragdoll_head_visual,Invisible,exclude],NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:73}}],Rotation:[1f,-90f],Silent:1}



execute positioned ^-0.15 ^ ^-0.15 run summon minecraft:armor_stand ~ ~-0.2 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_right_leg_center,ragdoll_center-all-parts]}
execute positioned ^-0.15 ^ ^-0.15 run summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:0,Small:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_right_leg,ragdoll_part-all-parts]}
execute positioned ^-0.15 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.8 ~ {IsBaby:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_right_leg_visual_prepare,Invisible,exclude,ragdoll_prepare],NoAI:1,Silent:1}
execute positioned ^-0.15 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.8 ~ {Tags:[ragdoll_plain_villager,ragdoll,ragdoll_right_leg_visual,Invisible,exclude],NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:71}}],Rotation:[1f,90f],Silent:1}

execute positioned ^0.15 ^ ^-0.15 run summon minecraft:armor_stand ~ ~-0.2 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_left_leg_center,ragdoll_center-all-parts]}
execute positioned ^0.15 ^ ^-0.15 run summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:1,Silent:1,Invisible:1,NoGravity:0,Small:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_left_leg,ragdoll_part-all-parts]}
execute positioned ^0.15 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.8 ~ {IsBaby:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_left_leg_visual_prepare,Invisible,exclude,ragdoll_prepare],NoAI:1,Silent:1}
execute positioned ^0.15 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.8 ~ {Tags:[ragdoll_plain_villager,ragdoll,ragdoll_left_leg_visual,Invisible,exclude],NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{CustomModelData:71}}],Rotation:[1f,90f],Silent:1}



summon minecraft:armor_stand ~ ~0.8 ~ {Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_head_part]}
summon minecraft:armor_stand ~ ~-0.5 ~ {Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_right_leg_part]}
summon minecraft:armor_stand ~ ~-0.5 ~ {Silent:1,Invisible:1,NoGravity:1,Small:1,Tags:[ragdoll_plain_villager,ragdoll,ragdoll_left_leg_part]}


team join NoCollision @e[tag=ragdoll]
scoreboard players add @e[tag=ragdoll] correction 1

##execute as @s run function deathanimations:summon/items


kill @s[type=!player]
