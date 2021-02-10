## by Tschipcraft

summon minecraft:armor_stand ~ ~ ~ {Small:1,Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[skeleton_death,death_detection]}
function deathanimations:verify_entities
scoreboard players add @e[type=minecraft:skeleton,scores={initalise=0..}] initalise 1
scoreboard players add @e[tag=skeleton_death] initalise 1

function deathanimations:detection/armor_items
