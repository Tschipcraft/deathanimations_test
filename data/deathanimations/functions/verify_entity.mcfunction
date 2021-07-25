## by Tschipcraft

scoreboard players set @s initalise 0
execute if score Global enable_pickup matches 0 run data merge entity @s {DeathTime:19s,DeathLootTable:"deathanimations:entities/default"}
execute if score Global enable_pickup matches 1 run data merge entity @s {DeathTime:19s,DeathLootTable:"deathanimations:entities/no_drop",HandDropChances:[0.000F,0.000F],ArmorDropChances:[0.085F,0.085F,0.000F,0.000F]}
