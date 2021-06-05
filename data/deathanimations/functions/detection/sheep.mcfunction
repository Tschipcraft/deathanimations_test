## by Tschipcraft

#summon minecraft:armor_stand ~ ~ ~ {Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[sheep_death,death_detection,animal_death,lame_death]}
execute if predicate deathanimations:is_adult run function deathanimations:verify_entity
scoreboard players add @s initalise 1
#scoreboard players add @e[type=minecraft:sheep,scores={initalise=0..}] initalise 1
#scoreboard players add @e[tag=sheep_death] initalise 1
