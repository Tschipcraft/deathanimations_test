## by Tschipcraft

summon minecraft:armor_stand ~ ~ ~ {Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[chicken_death,death_detection,animal_death,lame_death]}
function deathanimations:verify_entities
scoreboard players add @e[type=minecraft:chicken,scores={initalise=0..}] initalise 1
scoreboard players add @e[tag=chicken_death] initalise 1
