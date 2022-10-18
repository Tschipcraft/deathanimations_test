## by Tschipcraft

execute as @s[type=#deathanimations:supported] run function deathanimations:detection/supported

execute as @s[type=minecraft:iron_golem] at @s run function deathanimations:detection/iron_golem
execute as @s[type=minecraft:ravager] at @s run function deathanimations:detection/ravager
execute as @s[type=minecraft:endermite] at @s run function deathanimations:detection/endermite
execute as @s[type=minecraft:phantom] at @s run function deathanimations:detection/phantom

execute if entity @e[type=#deathanimations:marker_entities,tag=death_detection,distance=..0.1] run scoreboard players reset @s e_detection
