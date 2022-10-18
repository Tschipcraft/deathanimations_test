##by Tschipcraft

execute as @s[type=!minecraft:player] store result score @s xm run data get entity @s Motion[0] 100
execute as @s[type=!minecraft:player] store result score @s ym run data get entity @s Motion[1] 100
execute as @s[type=!minecraft:player] store result score @s zm run data get entity @s Motion[2] 100

execute as @s[type=minecraft:player] run scoreboard players operation @s xm = @s dx
execute as @s[type=minecraft:player] run scoreboard players operation @s ym = @s dy
execute as @s[type=minecraft:player] run scoreboard players operation @s zm = @s dz

scoreboard players set 2 y 2

scoreboard players operation @s xm *= 2 y
scoreboard players operation @s ym *= 2 y
scoreboard players operation @s zm *= 2 y
