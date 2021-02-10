## by Tschipcraft

summon minecraft:armor_stand ~ ~ ~ {Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,pillager_death,death_detection,lame_death]}
function deathanimations:verify_entities
scoreboard players add @e[type=minecraft:pillager,scores={initalise=0..}] initalise 1
scoreboard players add @e[tag=pillager_death] initalise 1
