## by Tschipcraft

execute as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=500..}] at @s run tp @s ~ ~-0.002 ~
kill @e[type=armor_stand,scores={age=1599..}]
execute if score global entity_count matches 25.. run function deathanimations:clear
scoreboard players add @e[type=#deathanimations:marker_entities,tag=low_p_mode] timeout_parts 1
execute as @e[type=#deathanimations:marker_entities,tag=low_p_mode,scores={timeout_parts=..500}] at @s run function deathanimations:low_p_mode/revive
