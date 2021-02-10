## by Tschipcraft

scoreboard players reset @e[scores={wait=5..}] wait
scoreboard players add @e[tag=ragdoll_torso] wait 1
scoreboard players add @e[tag=ragdoll_head] wait 1
scoreboard players add @e[tag=ragdoll_right_arm] wait 1
scoreboard players add @e[tag=ragdoll_left_arm] wait 1
scoreboard players add @e[tag=ragdoll_right_leg] wait 1
scoreboard players add @e[tag=ragdoll_left_leg] wait 1
scoreboard players add @e[tag=ragdoll_core] wait 1

scoreboard players add @e[tag=ragdoll] age 1
scoreboard players add @e[tag=ragdoll] cooldown 0
scoreboard players add @e[tag=ragdoll_core] pick_up 0
scoreboard players add @e[tag=ragdoll_core,scores={pick_up=1..}] pick_up 1

execute as @a[scores={ragdoll_click=1..}] at @s run scoreboard players set @e[distance=..5,tag=ragdoll_core,limit=1,sort=nearest,scores={pick_up=0}] pick_up 1
execute as @a[scores={ragdoll_click=1..}] at @s run scoreboard players set @e[distance=..5,tag=ragdoll_core,limit=1,sort=nearest,scores={pick_up=20..}] pick_up 0

execute as @e[tag=ragdoll_core,scores={pick_up=1..}] at @s at @p positioned ~ ~1.5 ~ run tp @s ^ ^ ^3

scoreboard players set @a[scores={ragdoll_click=1..}] ragdoll_click 0

## correction
execute as @e[tag=ragdoll_core] at @s unless block ~ ~ ~ #deathanimations:not_solid run tp @s ~ ~1 ~



## motion
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2}] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,limit=1,type=!armor_stand,type=!area_effect_cloud,type=!salmon,type=!dolphin,type=!tropical_fish,type=!phantom,type=!experience_orb,type=!zombie,type=!husk,type=!drowned,type=!skeleton,type=!stray,type=!wither_skeleton,type=!item,distance=..10]
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2}] at @s if entity @e[tag=arrow,distance=..9] run tp @s ~ ~ ~ facing entity @e[tag=arrow,limit=1,sort=furthest,distance=..9]
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2}] at @s if entity @e[tag=explosion,distance=..9] run tp @s ~ ~ ~ facing entity @e[tag=explosion,limit=1,sort=nearest,distance=..9]
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2}] at @s if entity @e[tag=explosion,distance=..9] run tag @s add exploded
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2}] at @s if entity @e[tag=arrow,distance=..9] run tag @s add arrowed
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2}] at @s run function deathanimations:tick

execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core] store result score @s xm run data get entity @s Motion[0] 200
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core] store result score @s ym run data get entity @s Motion[1] 200
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core] store result score @s zm run data get entity @s Motion[2] 200


effect give @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] minecraft:instant_damage 10 255 true
effect give @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] minecraft:resistance 10 255 true
effect give @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] minecraft:absorption 10 255 true
effect give @e[tag=Invisible] minecraft:invisibility 10 0 true


##Funny, wenn man type=!zombie rausnimmt
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_part-all-parts] at @s if entity @e[type=!#deathanimations:ragdoll_entities,type=!item,distance=..0.5] run function deathanimations:ragdoll_push

##execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_part-all-parts] at @s if entity @e[type=!armor_stand,type=!item,distance=..0.5] run function deathanimations:ragdoll_push

execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core] at @s if entity @a[distance=..0.5] run function deathanimations:ragdoll_push

## Float in water
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core,scores={wait=1}] at @s if block ~ ~ ~ water run function deathanimations:ragdoll_water
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_part-all-parts,scores={wait=1}] at @s if block ~ ~ ~ water run function deathanimations:ragdoll_water
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core,scores={wait=3}] at @s if block ~ ~ ~ water run function deathanimations:ragdoll_water
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_part-all-parts,scores={wait=3}] at @s if block ~ ~ ~ water run function deathanimations:ragdoll_water


## bounce off blocks
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core] at @s if block ~ ~-0.1 ~ #deathanimations:not_solid unless block ~0.2 ~-0.1 ~ #deathanimations:not_solid run data merge entity @s {Motion:[-0.2,0.1,0.0]}
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core] at @s if block ~ ~-0.1 ~ #deathanimations:not_solid unless block ~-0.2 ~-0.1 ~ #deathanimations:not_solid run data merge entity @s {Motion:[0.2,0.1,0.0]}
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core] at @s if block ~ ~-0.1 ~ #deathanimations:not_solid unless block ~ ~-0.1 ~0.2 #deathanimations:not_solid run data merge entity @s {Motion:[0.0,0.1,-0.2]}
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core] at @s if block ~ ~-0.1 ~ #deathanimations:not_solid unless block ~ ~-0.1 ~-0.2 #deathanimations:not_solid run data merge entity @s {Motion:[0.0,0.1,0.2]}


execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,scores={age=1..}] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core,distance=..20] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core,sort=nearest,limit=1] correction run tp @s ~ ~-0.2 ~

execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_part-all-parts] at @s unless block ~0.2 ~ ~ #deathanimations:not_solid run tp @s ~-0.3 ~ ~
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_part-all-parts] at @s unless block ~-0.2 ~ ~ #deathanimations:not_solid run tp @s ~0.3 ~ ~
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_part-all-parts] at @s unless block ~ ~ ~0.2 #deathanimations:not_solid run tp @s ~ ~ ~-0.3
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_part-all-parts] at @s unless block ~ ~ ~-0.2 #deathanimations:not_solid run tp @s ~ ~ ~0.3
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_part-all-parts] at @s unless block ~ ~ ~ #deathanimations:not_solid run tp @s ~ ~0.3 ~
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_part-all-parts] at @s unless block ~ ~0.4 ~ #deathanimations:not_solid run tp @s ~ ~-0.3 ~


## Ragdoll
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] at @s run function deathanimations:ragdoll/core


#execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_center,distance=..10] run tp @s ^ ^ ^50
#execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,distance=..10] run tp @s ^ ^ ^50

## Teleportation



## Prevent intersecting
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,distance=..0.7] run tp @s ^0.1 ^ ^

execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso,distance=..0.4] run tp @s ^0.1 ^ ^
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso,distance=..0.4] run tp @s ^-0.1 ^ ^
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg,distance=..0.4] run tp @s ^0.1 ^ ^
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg,distance=..0.4] run tp @s ^-0.1 ^ ^
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm,distance=..0.4] run tp @s ^0.1 ^ ^
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm,distance=..0.4] run tp @s ^-0.1 ^ ^
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm,distance=..0.4] run tp @s ^0.1 ^ ^
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm,distance=..0.4] run tp @s ^-0.1 ^ ^
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head,distance=..0.4] run tp @s ^0.1 ^ ^
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head,distance=..0.4] run tp @s ^-0.1 ^ ^
