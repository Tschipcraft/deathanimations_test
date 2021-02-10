## by Tschipcraft

data modify storage d_a:detection success set value 1
execute store result storage d_a:detection initalise float 1 run scoreboard players get @s initalise
execute as @e[type=!#deathanimations:marker_entities,distance=..1] at @s run function deathanimations:general/detection_result
execute store result score @s spawn_death_e run data get storage d_a:detection success 1
