## by Tschipcraft

summon minecraft:armor_stand ~ ~ ~ {Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[ravager_death,ravager,death_detection]}
function deathanimations:verify_entities
scoreboard players add @e[type=minecraft:ravager,scores={initalise=0..}] initalise 1
scoreboard players add @e[tag=ravager_death] initalise 1
