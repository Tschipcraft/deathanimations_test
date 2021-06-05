##by Tschipcraft

scoreboard players add @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_visual_nom] correction 1

scoreboard players operation Global correction = @s correction

execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] at @s if score @s correction = Global correction run function deathanimations:ragdoll/freeze/branch
