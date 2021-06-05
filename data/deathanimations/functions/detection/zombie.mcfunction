## by Tschipcraft

#summon minecraft:armor_stand ~ ~ ~ {Small:1,Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[zombie_death,death_detection]}
#function deathanimations:verify_entities
function deathanimations:verify_entity
scoreboard players add @e[type=zombie,scores={initalise=0..}] initalise 1
#scoreboard players add @e[tag=zombie_death] initalise 1

#function deathanimations:detection/armor_items
