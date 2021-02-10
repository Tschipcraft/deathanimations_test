## by Tschipcraft

summon minecraft:armor_stand ~ ~ ~ {Small:1,Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[stray_death,death_detection]}
function deathanimations:verify_entities
scoreboard players add @e[type=minecraft:stray,scores={initalise=0..}] initalise 1
scoreboard players add @e[tag=stray_death] initalise 1
