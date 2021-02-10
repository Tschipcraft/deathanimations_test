## by Tschipcraft

summon minecraft:armor_stand ~ ~ ~ {Small:1,Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[skeleton_death,death_detection]}
function deathanimations:verify_entities
scoreboard players add @e[type=minecraft:skeleton,scores={initalise=0..}] initalise 1
scoreboard players add @e[tag=skeleton_death] initalise 1
data modify entity @e[tag=skeleton_death,scores={initalise=1},limit=1] ArmorItems[0] set from entity @s ArmorItems[3]
data modify entity @e[tag=skeleton_death,scores={initalise=1},limit=1] ArmorItems[1] set from entity @s ArmorItems[2]
data modify entity @e[tag=skeleton_death,scores={initalise=1},limit=1] ArmorItems[2] set from entity @s ArmorItems[1]
data modify entity @e[tag=skeleton_death,scores={initalise=1},limit=1] ArmorItems[3] set from entity @s ArmorItems[0]
