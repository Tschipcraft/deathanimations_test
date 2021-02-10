## by Tschipcraft

summon minecraft:armor_stand ~ ~ ~ {Small:1,Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[husk_death,death_detection]}
function deathanimations:verify_entities
scoreboard players add @e[type=husk,scores={initalise=0..}] initalise 1
scoreboard players add @e[tag=husk_death] initalise 1
