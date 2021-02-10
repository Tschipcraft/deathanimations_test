## by Tschipcraft

execute as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=1..499}] run data merge entity @s {NoGravity:0,Silent:0}

execute as @e[type=#deathanimations:marker_entities,tag=death_detection] at @s unless entity @a[distance=..20] unless entity @e[type=area_effect_cloud,distance=..10,tag=d_a_p] run function deathanimations:detection/normalise

execute if score Global part_lifetime matches ..2 run execute as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=..840}] at @s unless entity @a[distance=..60] run scoreboard players set @s timeout_parts 845
execute if score Global part_lifetime matches ..2 run execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={timeout_parts=..840}] at @s unless entity @a[distance=..60] run scoreboard players set @s timeout_parts 845


execute if score Global part_lifetime matches 1 if score global entity_count matches 26.. run scoreboard players add @e[type=#deathanimations:marker_entities,tag=visual,scores={timeout_parts=1..480,age=100..}] timeout_parts 10
execute if score Global part_lifetime matches 1 if score global entity_count matches 26.. run scoreboard players add @e[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=1..480,age=100..}] timeout_parts 10

## clearing old ragdolls
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=800..}] at @s run function deathanimations:ragdoll_freeze
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] at @s unless entity @a[gamemode=!spectator,distance=..8] run function deathanimations:ragdoll_freeze


schedule function deathanimations:loop/remove_lag 2s
