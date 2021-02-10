##by NOPEname modified by Tschipcraft

execute as @s store result score @s xm run data get entity @s Motion[0] 100
execute as @s store result score @s ym run data get entity @s Motion[1] 100
execute as @s store result score @s zm run data get entity @s Motion[2] 100

execute as @s at @s run tp @s ~ ~ ~ facing entity @e[type=!tropical_fish,type=!cod,type=!salmon,type=!zombie,type=!armor_stand,type=!item,sort=nearest,limit=1]


execute as @s store result score @s x run data get entity @s Pos[0] 100
execute as @s store result score @s y run data get entity @s Pos[1] 100
execute as @s store result score @s z run data get entity @s Pos[2] 100

execute as @s at @s run tp @s ^ ^ ^-0.1

execute as @s store result score @s dx run data get entity @s Pos[0] 100
execute as @s store result score @s dy run data get entity @s Pos[1] 100
execute as @s store result score @s dz run data get entity @s Pos[2] 100

execute as @s at @s run tp @s ^ ^ ^0.1

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
##scoreboard players operation @s dy += @s staticy
scoreboard players operation @s dz -= @s z

scoreboard players operation @s dx += @s xm
scoreboard players operation @s dy += @s ym
scoreboard players operation @s dz += @s zm

#########
#How to change the speed:
#		"(...) Motion[0] double 0.002 (...)"		<--- the bigger this number, the faster the entity
#########



execute store result entity @s Motion[0] double 0.03 run scoreboard players get @s dx
execute if score @s dy matches 0.. store result entity @s Motion[1] double 0.03 run scoreboard players get @s dy
execute if score @s dy matches ..0 store result entity @s Motion[1] double 0.01 run scoreboard players get @s dy
execute store result entity @s Motion[2] double 0.03 run scoreboard players get @s dz
