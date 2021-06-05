##by Tschipcraft

# Increase tick
scoreboard players add Global da_ragdoll_t 1

# Cycle through
execute as @e[type=#deathanimations:ragdoll_entities,tag=!da_ticked,tag=ragdoll] at @s if score @s correction = Global da_ragdoll_t run tag @s add da_tick
execute as @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_center,scores={age=1..}] at @s at @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_core] run tp @s ~ ~-0.2 ~

execute as @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_part-all-parts] at @s run function deathanimations:ragdoll/branch/ragdoll_part-all
execute as @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_core] at @s run function deathanimations:ragdoll/branch/ragdoll_core
execute as @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=!ragdoll_core] at @s run function deathanimations:ragdoll/branch/ragdoll_parts

execute as @e[type=#deathanimations:ragdoll_entities,tag=da_tick] run function deathanimations:ragdoll/branch/reset

execute if score Global da_ragdoll_t matches ..29 run function deathanimations:ragdoll/core/loop
