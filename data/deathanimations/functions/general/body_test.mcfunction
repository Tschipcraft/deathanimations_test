## by Tschipcraft

scoreboard objectives add t_correction dummy
data modify storage d_a:body_test success set value 0
execute store result storage d_a:body_test correction float 1 run scoreboard players get @s correction
execute as @e[type=#deathanimations:marker_entities,tag=visual,distance=..10] at @s run function deathanimations:general/body_result
execute store result score @s b_test run data get storage d_a:body_test success 1
scoreboard objectives remove t_correction
