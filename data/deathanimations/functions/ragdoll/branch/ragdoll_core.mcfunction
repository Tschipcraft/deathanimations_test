##by Tschipcraft

## Correction
execute as @e[tag=ragdoll_core] at @s unless block ~ ~ ~ #deathanimations:not_solid run tp @s ~ ~1 ~


## Player push
execute if entity @a[distance=..0.5] run function deathanimations:ragdoll/motion/ragdoll_push


## Float in water
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core,scores={wait=1}] at @s if block ~ ~ ~ water run function deathanimations:ragdoll_water
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_part-all-parts,scores={wait=1}] at @s if block ~ ~ ~ water run function deathanimations:ragdoll_water
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core,scores={wait=3}] at @s if block ~ ~ ~ water run function deathanimations:ragdoll_water
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_part-all-parts,scores={wait=3}] at @s if block ~ ~ ~ water run function deathanimations:ragdoll_water


## bounce off blocks
execute if block ~ ~-0.1 ~ #deathanimations:not_solid unless block ~0.2 ~-0.1 ~ #deathanimations:not_solid run data merge entity @s {Motion:[-0.2,0.1,0.0]}
execute if block ~ ~-0.1 ~ #deathanimations:not_solid unless block ~-0.2 ~-0.1 ~ #deathanimations:not_solid run data merge entity @s {Motion:[0.2,0.1,0.0]}
execute if block ~ ~-0.1 ~ #deathanimations:not_solid unless block ~ ~-0.1 ~0.2 #deathanimations:not_solid run data merge entity @s {Motion:[0.0,0.1,-0.2]}
execute if block ~ ~-0.1 ~ #deathanimations:not_solid unless block ~ ~-0.1 ~-0.2 #deathanimations:not_solid run data merge entity @s {Motion:[0.0,0.1,0.2]}

## Pickup
scoreboard players add @s[tag=ragdoll_core] pick_up 0
scoreboard players add @s[tag=ragdoll_core,scores={pick_up=1..}] pick_up 1

execute as @a[scores={ragdoll_click=1..}] at @s run scoreboard players set @e[distance=..5,tag=ragdoll_core,limit=1,sort=nearest,scores={pick_up=0}] pick_up 1
execute as @a[scores={ragdoll_click=1..}] at @s run scoreboard players set @e[distance=..5,tag=ragdoll_core,limit=1,sort=nearest,scores={pick_up=20..}] pick_up 0

execute as @s[tag=ragdoll_core,scores={pick_up=1..}] at @s at @p positioned ~ ~1.5 ~ run tp @s ^ ^ ^3

scoreboard players set @a[scores={ragdoll_click=1..}] ragdoll_click 0
