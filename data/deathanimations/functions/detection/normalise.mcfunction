## by Tschipcraft

#scoreboard players reset @e[type=!minecraft:area_effect_cloud,type=!minecraft:armor_stand,distance=..1] initalise
execute as @e[type=!minecraft:area_effect_cloud,type=!minecraft:armor_stand,distance=..1] run function deathanimations:detection/reset_entity

kill @s[type=!player]
