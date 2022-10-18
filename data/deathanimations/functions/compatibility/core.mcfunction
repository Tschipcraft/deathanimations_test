## by Tschipcraft // ADD ARMOR STAND NOGRAVITY TESTs

summon armor_stand ~ ~1 ~ {Tags:[da_leg_test,exclude],Small:1b,NoGravity:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,NoBasePlate:1b}
summon area_effect_cloud ~ ~-3 ~ {Tags:[da_leg_test],ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:100,DurationOnUse:0f,PersistenceRequired:1b}
summon zombie ~ ~-3 ~ {Tags:[da_leg_test],PersistenceRequired:1b,NoAI:1b,Tags:[Invisible,da_leg_test,exclude],Silent:1b,Invulnerable:1b,CanPickUpLoot:0b,IsBaby:1b,DeathLootTable:"minecraft:empty",DeathTime:19s,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:40}]}
summon item ~ ~-3 ~ {NoGravity:1b,Silent:1b,PickupDelay:32767,Tags:["exclude","da_leg_test"],Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:1}}}

execute as @e[type=area_effect_cloud,tag=da_leg_test] at @s run tp @s ~ ~2 ~

schedule function deathanimations:compatibility/result 1s

execute store result storage d_a:compatibility mob_loot byte 1 run gamerule doMobLoot
execute if data storage d_a:compatibility {mob_loot:0b} run function deathanimations:compatibility/mob_loot
