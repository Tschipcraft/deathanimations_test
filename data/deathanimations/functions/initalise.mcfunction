## by Tschipcraft

execute as @e[distance=..10,type=!player,type=!armor_stand,type=!item,type=!area_effect_cloud,type=!snowball,type=!arrow,tag=!exclude] at @s unless entity @s[scores={initalise=1..}] run scoreboard players set @s e_detection 1

execute as @e[scores={e_detection=1..},distance=..10] at @s run function deathanimations:summon_detection
