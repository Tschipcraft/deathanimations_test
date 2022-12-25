##by Tschipcraft

# New player
scoreboard players add @a[gamemode=!spectator] da_sid 0
execute as @a[scores={da_sid=0},limit=1] at @s run function deathanimations:general/player_swing/new_player

execute as @a[gamemode=!spectator,scores={da_sid=1..}] at @s run function deathanimations:general/player_swing/search

# Reset (put in loop)
execute as @e[type=minecraft:marker,tag=da_player_swing] at @s positioned ~ ~-1.6 ~ unless entity @a[distance=..10] run kill @s
