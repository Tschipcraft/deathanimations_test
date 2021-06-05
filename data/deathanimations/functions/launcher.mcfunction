## by Tschipcraft

execute unless score Global d_launcher matches 20.. run scoreboard players add Global d_launcher 1
execute if score Global d_launcher matches 10.. run function deathanimations:core

#execute if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] run function deathanimations:ragdoll/core/main

#execute as @a if predicate deathanimations:test run say hi
