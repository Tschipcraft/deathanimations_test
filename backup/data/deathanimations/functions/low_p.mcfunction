## by Tschipcraft

execute store result score global_low_p entity_count run execute if entity @e[tag=low_p_bodypart]
execute if score global_low_p entity_count matches 30.. run scoreboard players add @e[tag=low_p_bodypart] age 500
scoreboard players add @e[type=#deathanimations:marker_entities,tag=low_p_bodypart] age 40
execute as @e[type=#deathanimations:marker_entities,tag=low_p_bodypart,scores={age=1000..}] at @s run tp @s ~ ~-0.040 ~
execute as @e[type=#deathanimations:marker_entities,tag=low_p_bodypart] at @s if block ~ ~1 ~ #deathanimations:nonsolid run tp @s ~ ~-1 ~
execute as @e[type=#deathanimations:marker_entities,tag=low_p_bodypart] at @s if block ~ ~1 ~ #deathanimations:nonsolid run kill @s
execute as @e[type=#deathanimations:marker_entities,tag=low_p_bodypart] at @s unless entity @a[distance=..40] run tp @s ~ ~-1 ~
execute as @e[type=#deathanimations:marker_entities,tag=low_p_bodypart] at @s unless entity @a[distance=..40] run kill @s
execute as @e[type=#deathanimations:marker_entities,tag=low_p_bodypart,scores={age=1499..}] at @s run tp @s ~ ~-1 ~
kill @e[type=#deathanimations:marker_entities,tag=low_p_bodypart,scores={age=1499..}]
