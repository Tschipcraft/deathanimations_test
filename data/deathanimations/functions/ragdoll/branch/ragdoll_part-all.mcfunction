##by Tschipcraft

execute at @s if entity @e[type=!#deathanimations:ragdoll_entities,type=!item,distance=..0.5] run function deathanimations:ragdoll/motion/ragdoll_push


execute at @s unless block ~0.2 ~ ~ #deathanimations:not_solid run tp @s ~-0.3 ~ ~
execute at @s unless block ~-0.2 ~ ~ #deathanimations:not_solid run tp @s ~0.3 ~ ~
execute at @s unless block ~ ~ ~0.2 #deathanimations:not_solid run tp @s ~ ~ ~-0.3
execute at @s unless block ~ ~ ~-0.2 #deathanimations:not_solid run tp @s ~ ~ ~0.3
execute at @s unless block ~ ~ ~ #deathanimations:not_solid run tp @s ~ ~0.3 ~
execute at @s unless block ~ ~0.4 ~ #deathanimations:not_solid run tp @s ~ ~-0.3 ~


# fire
execute as @s if predicate deathanimations:on_fire at @s run particle smoke ~ ~ ~ 0.1 0.1 0.1 0.01 1
