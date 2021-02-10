## by Tschipcraft

##summon minecraft:armor_stand ~ ~ ~ {Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[endermite_death,death_detection]}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[endermite_death,death_detection],Radius:0f,RadiusPerTick:0f,Duration:200}
function deathanimations:verify_entities
scoreboard players add @e[type=minecraft:endermite,scores={initalise=0..}] initalise 1
scoreboard players add @e[tag=endermite_death] initalise 1
