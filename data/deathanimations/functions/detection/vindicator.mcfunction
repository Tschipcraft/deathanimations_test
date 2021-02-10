## by Tschipcraft

summon minecraft:armor_stand ~ ~ ~ {Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,vindicator_death,death_detection,lame_death]}
function deathanimations:verify_entities
scoreboard players add @e[type=minecraft:vindicator,scores={initalise=0..}] initalise 1
scoreboard players add @e[tag=vindicator_death] initalise 1

function deathanimations:detection/armor_items
