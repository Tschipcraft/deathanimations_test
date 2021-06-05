## by Tschipcraft

#summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[spider_death,death_detection],Radius:0f,RadiusPerTick:0f,Duration:2000}
function deathanimations:verify_entity
scoreboard players add @s initalise 1
#scoreboard players add @e[type=minecraft:spider,scores={initalise=0..}] initalise 1
#scoreboard players add @e[tag=spider_death] initalise 1
