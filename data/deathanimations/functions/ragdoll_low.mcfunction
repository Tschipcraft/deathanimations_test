##by NOPEname modified by Tschipcraft

execute as @s store result score @s xm run data get entity @s Motion[0] 100
execute as @s store result score @s ym run data get entity @s Motion[1] 100
execute as @s store result score @s zm run data get entity @s Motion[2] 100

execute as @s[tag=ragdoll_torso] at @s run tp @s ~ ~ ~ facing entity @e[tag=ragdoll_center,tag=da_tick,sort=nearest,limit=1]
execute as @s[tag=ragdoll_head] at @s run tp @s ~ ~ ~ facing entity @e[tag=ragdoll_head_center,tag=da_tick,sort=nearest,limit=1]
execute as @s[tag=ragdoll_right_arm] at @s run tp @s ~ ~ ~ facing entity @e[tag=ragdoll_right_arm_center,tag=da_tick,sort=nearest,limit=1]
execute as @s[tag=ragdoll_left_arm] at @s run tp @s ~ ~ ~ facing entity @e[tag=ragdoll_left_arm_center,tag=da_tick,sort=nearest,limit=1]
execute as @s[tag=ragdoll_right_leg] at @s run tp @s ~ ~ ~ facing entity @e[tag=ragdoll_right_leg_center,tag=da_tick,sort=nearest,limit=1]
execute as @s[tag=ragdoll_left_leg] at @s run tp @s ~ ~ ~ facing entity @e[tag=ragdoll_left_leg_center,tag=da_tick,sort=nearest,limit=1]


#execute as @s[tag=ragdoll_torso] at @s at @e[tag=ragdoll_center,distance=..10] if score @s correction = @e[tag=ragdoll_center,sort=nearest,limit=1] correction as @e[tag=ragdoll_center,sort=nearest,limit=1] at @e[tag=ragdoll_torso] if score @s correction = @e[tag=ragdoll_torso,limit=1,sort=nearest] correction run tp @e[tag=ragdoll_torso,sort=nearest,limit=1] ~ ~ ~ facing entity @s
#execute as @s[tag=ragdoll_head] at @s at @e[tag=ragdoll_head_center,distance=..10] if score @s correction = @e[tag=ragdoll_head_center,sort=nearest,limit=1] correction as @e[tag=ragdoll_head_center,sort=nearest,limit=1] at @e[tag=ragdoll_head] if score @s correction = @e[tag=ragdoll_head,limit=1,sort=nearest] correction run tp @e[tag=ragdoll_head,sort=nearest,limit=1] ~ ~ ~ facing entity @s
#execute as @s[tag=ragdoll_right_arm] at @s at @e[tag=ragdoll_right_arm_center,distance=..10] if score @s correction = @e[tag=ragdoll_right_arm_center,sort=nearest,limit=1] correction as @e[tag=ragdoll_right_arm_center,sort=nearest,limit=1] at @e[tag=ragdoll_right_arm] if score @s correction = @e[tag=ragdoll_right_arm,limit=1,sort=nearest] correction run tp @e[tag=ragdoll_right_arm,sort=nearest,limit=1] ~ ~ ~ facing entity @s
#execute as @s[tag=ragdoll_left_arm] at @s at @e[tag=ragdoll_left_arm_center,distance=..10] if score @s correction = @e[tag=ragdoll_left_arm_center,sort=nearest,limit=1] correction as @e[tag=ragdoll_left_arm_center,sort=nearest,limit=1] at @e[tag=ragdoll_left_arm] if score @s correction = @e[tag=ragdoll_left_arm,limit=1,sort=nearest] correction run tp @e[tag=ragdoll_left_arm,sort=nearest,limit=1] ~ ~ ~ facing entity @s
#execute as @s[tag=ragdoll_right_leg] at @s at @e[tag=ragdoll_right_leg_center,distance=..10] if score @s correction = @e[tag=ragdoll_right_leg_center,sort=nearest,limit=1] correction as @e[tag=ragdoll_right_leg_center,sort=nearest,limit=1] at @e[tag=ragdoll_right_leg] if score @s correction = @e[tag=ragdoll_right_leg,limit=1,sort=nearest] correction run tp @e[tag=ragdoll_right_leg,sort=nearest,limit=1] ~ ~ ~ facing entity @s
#execute as @s[tag=ragdoll_left_leg] at @s at @e[tag=ragdoll_left_leg_center,distance=..10] if score @s correction = @e[tag=ragdoll_left_leg_center,sort=nearest,limit=1] correction as @e[tag=ragdoll_left_leg_center,sort=nearest,limit=1] at @e[tag=ragdoll_left_leg] if score @s correction = @e[tag=ragdoll_left_leg,limit=1,sort=nearest] correction run tp @e[tag=ragdoll_left_leg,sort=nearest,limit=1] ~ ~ ~ facing entity @s

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

execute as @s at @s at @e[tag=ragdoll_core] if score @s correction = @e[tag=ragdoll_core,sort=nearest,limit=1] correction run scoreboard players operation @s dx += @e[tag=ragdoll_core,sort=nearest,limit=1] xm
execute as @s at @s at @e[tag=ragdoll_core] if score @s correction = @e[tag=ragdoll_core,sort=nearest,limit=1] correction run scoreboard players operation @s dy += @e[tag=ragdoll_core,sort=nearest,limit=1] ym
execute as @s at @s at @e[tag=ragdoll_core] if score @s correction = @e[tag=ragdoll_core,sort=nearest,limit=1] correction run scoreboard players operation @s dz += @e[tag=ragdoll_core,sort=nearest,limit=1] zm

scoreboard players operation @s dx += @s xm
scoreboard players operation @s dy += @s ym
scoreboard players operation @s dz += @s zm

#########
#How to change the speed:
#		"(...) Motion[0] double 0.002 (...)"		<--- the bigger this number, the faster the entity
#########



execute store result entity @s Motion[0] double 0.02 run scoreboard players get @s dx
execute if score @s dy matches 0.. store result entity @s Motion[1] double 0.02 run scoreboard players get @s dy
execute if score @s dy matches ..0 store result entity @s Motion[1] double 0.01 run scoreboard players get @s dy
execute store result entity @s Motion[2] double 0.02 run scoreboard players get @s dz
