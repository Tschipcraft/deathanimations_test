## by Tschipcraft



execute as @e[distance=..10,type=!player,type=!armor_stand,type=!item,type=!area_effect_cloud,type=!snowball,type=!arrow,tag=!exclude] at @s unless entity @e[type=#deathanimations:marker_entities,distance=..0.1] run scoreboard players set @s e_detection 1

execute as @e[scores={e_detection=1..},distance=..10] run function deathanimations:summon_detection

execute as @e[scores={e_detection=1..},distance=..10] at @s if entity @e[tag=death_detection,distance=..0.1] run scoreboard players reset @s e_detection
