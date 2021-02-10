## by Tschipcraft

kill @e[type=armor_stand,scores={age=1599..}]
execute store result score low_p_entities entity_count run execute if entity @e[type=#deathanimations:marker_entities,tag=low_p_mode]
execute if score low_p_entities entity_count matches 20.. run scoreboard players add @e[type=#deathanimations:marker_entities,tag=low_p_mode] timeout_parts 1
execute if score low_p_entities entity_count matches 70.. run function deathanimations:clear

execute if score global entity_count matches 40.. run function deathanimations:clear

execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={age=35..},tag=OnGround] at @s unless entity @a[distance=..6] run function deathanimations:low_p_mode/activate
execute as @e[type=#deathanimations:marker_entities,tag=low_p_mode,scores={timeout_parts=..500}] at @s if entity @a[distance=..4] run function deathanimations:low_p_mode/revive
