## by Tschipcraft

#summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[phantom_death,death_detection],Radius:0f,RadiusPerTick:0f,Duration:200}
function deathanimations:verify_entity
scoreboard players add @s initalise 1
#scoreboard players add @e[type=minecraft:phantom,scores={initalise=0..}] initalise 1
#scoreboard players add @e[tag=phantom_death] initalise 1
