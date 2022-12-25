##by Tschipcraft
# Add swing momentum

# Get current motion
execute as @s store result score @s xm run data get entity @s Motion[0] 100
execute as @s store result score @s ym run data get entity @s Motion[1] 100
execute as @s store result score @s zm run data get entity @s Motion[2] 100

# Apply new motion
execute store result entity @s Motion[0] double 0.02 run scoreboard players get @e[type=minecraft:marker,tag=da_player_swing,limit=1,sort=nearest] dx
execute store result entity @s Motion[1] double 0.02 run scoreboard players get @e[type=minecraft:marker,tag=da_player_swing,limit=1,sort=nearest] dy
execute store result entity @s Motion[2] double 0.02 run scoreboard players get @e[type=minecraft:marker,tag=da_player_swing,limit=1,sort=nearest] dz

# Add together
execute as @s store result score @s x run data get entity @s Motion[0] 100
execute as @s store result score @s y run data get entity @s Motion[1] 100
execute as @s store result score @s z run data get entity @s Motion[2] 100

scoreboard players operation @s xm += @s x
scoreboard players operation @s ym += @s y
scoreboard players operation @s zm += @s z

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s xm
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s ym
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s zm