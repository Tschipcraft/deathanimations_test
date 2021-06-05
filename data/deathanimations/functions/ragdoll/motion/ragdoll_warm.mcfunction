##by NOPEname modified by Tschipcraft

execute as @s store result score @s xm run data get entity @s Motion[0] 90
execute as @s store result score @s ym run data get entity @s Motion[1] 90
execute as @s store result score @s zm run data get entity @s Motion[2] 90

execute as @s[tag=ragdoll_torso] at @s run tp @s ~ ~ ~ facing entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,tag=da_tick,sort=nearest,limit=1]
execute as @s[tag=ragdoll_head] at @s run tp @s ~ ~ ~ facing entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_center,tag=da_tick,sort=nearest,limit=1]
execute as @s[tag=ragdoll_right_arm] at @s run tp @s ~ ~ ~ facing entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_center,tag=da_tick,sort=nearest,limit=1]
execute as @s[tag=ragdoll_left_arm] at @s run tp @s ~ ~ ~ facing entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_center,tag=da_tick,sort=nearest,limit=1]
execute as @s[tag=ragdoll_right_leg] at @s run tp @s ~ ~ ~ facing entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_center,tag=da_tick,sort=nearest,limit=1]
execute as @s[tag=ragdoll_left_leg] at @s run tp @s ~ ~ ~ facing entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_center,tag=da_tick,sort=nearest,limit=1]

execute as @s store result score @s x run data get entity @s Pos[0] 100
execute as @s store result score @s y run data get entity @s Pos[1] 100
execute as @s store result score @s z run data get entity @s Pos[2] 100

execute as @s at @s run tp @s ^ ^ ^0.05

execute as @s store result score @s dx run data get entity @s Pos[0] 100
execute as @s store result score @s dy run data get entity @s Pos[1] 100
execute as @s store result score @s dz run data get entity @s Pos[2] 100

execute as @s at @s run tp @s ^ ^ ^-0.05

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
##scoreboard players operation @s dy += @s staticy
scoreboard players operation @s dz -= @s z

scoreboard players operation @s dx += @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_core,sort=nearest,limit=1] xm
scoreboard players operation @s dy += @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_core,sort=nearest,limit=1] ym
scoreboard players operation @s dz += @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_core,sort=nearest,limit=1] zm


scoreboard players operation @s dx += @s xm
scoreboard players operation @s dy += @s ym
scoreboard players operation @s dz += @s zm


#########
#How to change the speed:
#		"(...) Motion[0] double 0.002 (...)"		<--- the bigger this number, the faster the entity
#########

#execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s dx
#execute if score @s dy matches 0.. store result entity @s Motion[1] double 0.01 run scoreboard players get @s dy
#execute if score @s dy matches ..0 store result entity @s Motion[1] double 0.01 run scoreboard players get @s dy
#execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s dz

execute at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_center-all-parts,distance=0.1..1] store result entity @s Motion[0] double 0.01 run scoreboard players get @s dx
execute at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_center-all-parts,distance=0.1..1] if score @s dy matches 0.. store result entity @s Motion[1] double 0.01 run scoreboard players get @s dy
execute at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_center-all-parts,distance=0.1..1] if score @s dy matches ..0 store result entity @s Motion[1] double 0.01 run scoreboard players get @s dy
execute at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_center-all-parts,distance=0.1..1] store result entity @s Motion[2] double 0.01 run scoreboard players get @s dz


execute at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_center-all-parts,distance=1..3] store result entity @s Motion[0] double 0.03 run scoreboard players get @s dx
execute at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_center-all-parts,distance=1..3] if score @s dy matches 0.. store result entity @s Motion[1] double 0.03 run scoreboard players get @s dy
execute at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_center-all-parts,distance=1..3] if score @s dy matches ..0 store result entity @s Motion[1] double 0.02 run scoreboard players get @s dy
execute at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=da_tick,tag=ragdoll_center-all-parts,distance=1..3] store result entity @s Motion[2] double 0.03 run scoreboard players get @s dz


#execute as @s at @s at @e[tag=ragdoll_center-all-parts,distance=..1] if score @s correction = @e[tag=ragdoll_center-all-parts,distance=..1,sort=nearest,limit=1] correction store result entity @s Motion[0] double 0.02 run scoreboard players get @s dx
#execute as @s at @s at @e[tag=ragdoll_center-all-parts,distance=..1] if score @s correction = @e[tag=ragdoll_center-all-parts,distance=..1,sort=nearest,limit=1] correction if score @s dy matches 0.. store result entity @s Motion[1] double 0.02 run scoreboard players get @s dy
#execute as @s at @s at @e[tag=ragdoll_center-all-parts,distance=..1] if score @s correction = @e[tag=ragdoll_center-all-parts,distance=..1,sort=nearest,limit=1] correction if score @s dy matches ..0 store result entity @s Motion[1] double 0.01 run scoreboard players get @s dy
#execute as @s at @s at @e[tag=ragdoll_center-all-parts,distance=..1] if score @s correction = @e[tag=ragdoll_center-all-parts,distance=..1,sort=nearest,limit=1] correction store result entity @s Motion[2] double 0.02 run scoreboard players get @s dz

#execute as @s at @s at @e[tag=ragdoll_center-all-parts,distance=1..3] if score @s correction = @e[tag=ragdoll_center-all-parts,distance=1..3,sort=nearest,limit=1] correction store result entity @s Motion[0] double 0.04 run scoreboard players get @s dx
#execute as @s at @s at @e[tag=ragdoll_center-all-parts,distance=1..3] if score @s correction = @e[tag=ragdoll_center-all-parts,distance=1..3,sort=nearest,limit=1] correction if score @s dy matches 0.. store result entity @s Motion[1] double 0.04 run scoreboard players get @s dy
#execute as @s at @s at @e[tag=ragdoll_center-all-parts,distance=1..3] if score @s correction = @e[tag=ragdoll_center-all-parts,distance=1..3,sort=nearest,limit=1] correction if score @s dy matches ..0 store result entity @s Motion[1] double 0.02 run scoreboard players get @s dy
#execute as @s at @s at @e[tag=ragdoll_center-all-parts,distance=1..3] if score @s correction = @e[tag=ragdoll_center-all-parts,distance=1..3,sort=nearest,limit=1] correction store result entity @s Motion[2] double 0.04 run scoreboard players get @s dz
