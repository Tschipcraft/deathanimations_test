## by Tschipcraft

summon minecraft:armor_stand ~ ~ ~ {Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[pig_death,death_detection,animal_death,lame_death]}
function deathanimations:verify_entities
scoreboard players add @e[type=minecraft:pig,scores={initalise=0..}] initalise 1
scoreboard players add @e[tag=pig_death] initalise 1
