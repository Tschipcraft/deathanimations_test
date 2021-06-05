## by Tschipcraft

#summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[creeper_death,death_detection],Radius:0f,RadiusPerTick:0f,Duration:2000}
function deathanimations:verify_entity
#execute if score Global enable_pickup matches 1 run data merge entity @s {DeathLootTable:"deathanimations:entities/creeper_empty"}
scoreboard players add @s initalise 1
#scoreboard players add @e[type=minecraft:creeper,scores={initalise=0..}] initalise 1
#scoreboard players add @e[tag=creeper_death] initalise 1
