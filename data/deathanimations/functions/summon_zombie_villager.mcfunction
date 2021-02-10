## by Tschipcraft
execute if score @s Type matches 0 run function deathanimations:summon/plain_zombie_villager
execute if score @s Type matches 1 run function deathanimations:summon/desert_zombie_villager
execute if score @s Type matches 2 run function deathanimations:summon/savanna_zombie_villager
execute if score @s Type matches 3 run function deathanimations:summon/snow_zombie_villager
execute if score @s Type matches 4 run function deathanimations:summon/taiga_zombie_villager
execute if score @s Type matches 5 run function deathanimations:summon/jungle_zombie_villager
execute if score @s Type matches 6 run function deathanimations:summon/swamp_zombie_villager


execute as @s at @s if entity @s[scores={OnFire=0}] run particle minecraft:item redstone_block ~ ~1 ~ 0 0.3 0 0.1 100 normal @a[scores={blood_local=1}]


execute as @s at @s if entity @s[scores={OnFire=1}] run particle minecraft:block magma_block ~ ~1 ~ 0.2 0.4 0.2 0 300 normal
execute as @s at @s if entity @s[scores={OnFire=1}] run particle minecraft:falling_dust obsidian ~ ~1 ~ 0.2 0.5 0.2 0 250 normal
execute as @s at @s if entity @s[scores={OnFire=1}] run playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~


execute as @s run function deathanimations:summon/items


##summon area_effect_cloud ~ ~ ~ {Tags:[clearItems],NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:5}

##function deathanimations:summon_soul

kill @s[type=!player]
