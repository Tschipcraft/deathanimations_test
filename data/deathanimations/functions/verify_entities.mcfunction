## by Tschipcraft

scoreboard players set @s initalise 0
execute if score Global enable_pickup matches 0 run data merge entity @s {DeathTime:19s}
execute if score Global enable_pickup matches 1 run data merge entity @s {DeathTime:19s,DeathLootTable:"minecraft:empty"}
