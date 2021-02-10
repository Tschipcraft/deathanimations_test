## by Tschipcraft

summon minecraft:armor_stand ~ ~ ~ {Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[iron_golem_death,iron_golem,death_detection]}
function deathanimations:verify_entities
scoreboard players add @e[type=minecraft:iron_golem,scores={initalise=0..}] initalise 1
scoreboard players add @e[tag=iron_golem_death] initalise 1
