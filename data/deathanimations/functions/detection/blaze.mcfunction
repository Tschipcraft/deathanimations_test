## by Tschipcraft

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[blaze_death,death_detection],Radius:0f,RadiusPerTick:0f,Duration:2000}
function deathanimations:verify_entities
scoreboard players add @e[type=minecraft:blaze,scores={initalise=0..}] initalise 1
scoreboard players add @e[tag=blaze_death] initalise 1
