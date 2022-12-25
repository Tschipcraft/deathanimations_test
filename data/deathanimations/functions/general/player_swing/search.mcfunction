##by Tschipcraft
# Searches up player swing counterpart entity from player

scoreboard players operation .search da_sid = @s da_sid
tag @s add this
execute as @e[type=minecraft:marker,tag=da_player_swing,predicate=deathanimations:search] at @s rotated as @s run function deathanimations:general/player_swing/adjust_pos

# Counterpart not found
execute if entity @s[tag=this] run scoreboard players reset @s da_sid
