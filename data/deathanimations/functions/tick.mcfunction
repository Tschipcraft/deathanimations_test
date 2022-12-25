##by NOPEname modified by Tschipcraft

# Get current motion
execute as @s store result score @s xm run data get entity @s Motion[0] 100
execute as @s store result score @s ym run data get entity @s Motion[1] 100
execute as @s store result score @s zm run data get entity @s Motion[2] 100

# Calculate new motion
execute as @s store result score @s x run data get entity @s Pos[0] 100
execute as @s store result score @s y run data get entity @s Pos[1] 100
execute as @s store result score @s z run data get entity @s Pos[2] 100

execute as @s at @s run tp @s ^ ^ ^-0.1

execute as @s store result score @s dx run data get entity @s Pos[0] 100
execute as @s store result score @s dy run data get entity @s Pos[1] 100
execute as @s store result score @s dz run data get entity @s Pos[2] 100

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
#scoreboard players operation @s dy += @s staticy
scoreboard players operation @s dz -= @s z

# Apply
execute if entity @s[scores={cooldown=0}] unless entity @s[tag=fish] unless entity @s[tag=iron_golem] unless entity @s[tag=exploded] unless entity @s[tag=arrowed] unless entity @s[tag=ragdoll] store result entity @s Motion[0] double 0.1 run scoreboard players get @s dx
execute if entity @s[scores={cooldown=0}] unless entity @s[tag=fish] unless entity @s[tag=iron_golem] unless entity @s[tag=exploded] unless entity @s[tag=arrowed] unless entity @s[tag=ragdoll] if score @s dy matches 0.. store result entity @s Motion[1] double 0.15 run scoreboard players get @s dy
execute if entity @s[scores={cooldown=0}] unless entity @s[tag=fish] unless entity @s[tag=iron_golem] unless entity @s[tag=exploded] unless entity @s[tag=arrowed] unless entity @s[tag=ragdoll] if score @s dy matches ..0 store result entity @s Motion[1] double 0.05 run scoreboard players get @s dy
execute if entity @s[scores={cooldown=0}] unless entity @s[tag=fish] unless entity @s[tag=iron_golem] unless entity @s[tag=exploded] unless entity @s[tag=arrowed] unless entity @s[tag=ragdoll] store result entity @s Motion[2] double 0.1 run scoreboard players get @s dz

execute if entity @s[scores={cooldown=1..}] unless entity @s[tag=fish] unless entity @s[tag=iron_golem] store result entity @s Motion[0] double 0.08 run scoreboard players get @s dx
execute if entity @s[scores={cooldown=1..}] unless entity @s[tag=fish] unless entity @s[tag=iron_golem] if score @s dy matches 0.. store result entity @s Motion[1] double 0.05 run scoreboard players get @s dy
execute if entity @s[scores={cooldown=1..}] unless entity @s[tag=fish] unless entity @s[tag=iron_golem] if score @s dy matches ..0 store result entity @s Motion[1] double 0.03 run scoreboard players get @s dy
execute if entity @s[scores={cooldown=1..}] unless entity @s[tag=fish] unless entity @s[tag=iron_golem] store result entity @s Motion[2] double 0.08 run scoreboard players get @s dz

execute if entity @s[tag=fish] store result entity @s Motion[0] double 0.04 run scoreboard players get @s dx
execute if entity @s[tag=fish] if score @s dy matches 0.. store result entity @s Motion[1] double 0.025 run scoreboard players get @s dy
execute if entity @s[tag=fish] if score @s dy matches ..0 store result entity @s Motion[1] double 0.01 run scoreboard players get @s dy
execute if entity @s[tag=fish] store result entity @s Motion[2] double 0.04 run scoreboard players get @s dz

execute if entity @s[tag=iron_golem] store result entity @s Motion[0] double 0.04 run scoreboard players get @s dx
##execute if entity @s[tag=iron_golem] if score @s dy matches 0.. store result entity @s Motion[1] double 0.025 run scoreboard players get @s dy
##execute if entity @s[tag=iron_golem] if score @s dy matches ..0 store result entity @s Motion[1] double 0.01 run scoreboard players get @s dy
execute if entity @s[tag=iron_golem] store result entity @s Motion[2] double 0.04 run scoreboard players get @s dz

execute if entity @s[tag=da_trident_death] store result entity @s Motion[0] double 0.15 run scoreboard players get @s dx
execute if entity @s[tag=da_trident_death] if score @s dy matches 0.. store result entity @s Motion[1] double 0.15 run scoreboard players get @s dy
execute if entity @s[tag=da_trident_death] if score @s dy matches ..0 store result entity @s Motion[1] double 0.05 run scoreboard players get @s dy
execute if entity @s[tag=da_trident_death] store result entity @s Motion[2] double 0.15 run scoreboard players get @s dz

# Detect shot parts
execute if entity @s[tag=arrowed] at @s positioned ~-2.0 ~0.5 ~-2.0 if entity @e[type=#deathanimations:marker_entities,tag=arrow,dx=4,dy=0.2,dz=4] run say You hit me!
execute if entity @s[tag=arrowed] at @s positioned ~-2.0 ~0.5 ~-2.0 if entity @e[type=#deathanimations:marker_entities,tag=arrow,dx=4,dy=0.2,dz=4] store result entity @s Motion[0] double 0.17 run scoreboard players get @s dx
execute if entity @s[tag=arrowed] at @s positioned ~-2.0 ~0.5 ~-2.0 if entity @e[type=#deathanimations:marker_entities,tag=arrow,dx=4,dy=0.2,dz=4] if score @s dy matches 0.. store result entity @s Motion[1] double 0.05 run scoreboard players get @s dy
execute if entity @s[tag=arrowed] at @s positioned ~-2.0 ~0.5 ~-2.0 if entity @e[type=#deathanimations:marker_entities,tag=arrow,dx=4,dy=0.2,dz=4] if score @s dy matches ..0 store result entity @s Motion[1] double 0.05 run scoreboard players get @s dy
execute if entity @s[tag=arrowed] at @s positioned ~-2.0 ~0.5 ~-2.0 if entity @e[type=#deathanimations:marker_entities,tag=arrow,dx=4,dy=0.2,dz=4] store result entity @s Motion[2] double 0.17 run scoreboard players get @s dz

execute if entity @s[tag=exploded] store result entity @s Motion[0] double 0.4 run scoreboard players get @s dx
execute if entity @s[tag=exploded] if score @s dy matches 0.. store result entity @s Motion[1] double 0.25 run scoreboard players get @s dy
execute if entity @s[tag=exploded] if score @s dy matches ..0 store result entity @s Motion[1] double 0.1 run scoreboard players get @s dy
execute if entity @s[tag=exploded] store result entity @s Motion[2] double 0.4 run scoreboard players get @s dz

execute if entity @s[tag=ragdoll] unless entity @s[tag=exploded] store result entity @s Motion[0] double 0.12 run scoreboard players get @s dx
execute if entity @s[tag=ragdoll] unless entity @s[tag=exploded] if score @s dy matches 0.. store result entity @s Motion[1] double 0.15 run scoreboard players get @s dy
execute if entity @s[tag=ragdoll] unless entity @s[tag=exploded] if score @s dy matches ..0 store result entity @s Motion[1] double 0.15 run scoreboard players get @s dy
execute if entity @s[tag=ragdoll] unless entity @s[tag=exploded] store result entity @s Motion[2] double 0.12 run scoreboard players get @s dz


# Add motions together
execute as @s store result score @s x run data get entity @s Motion[0] 100
execute as @s store result score @s y run data get entity @s Motion[1] 100
execute as @s store result score @s z run data get entity @s Motion[2] 100

scoreboard players operation @s xm += @s x
scoreboard players operation @s ym += @s y
scoreboard players operation @s zm += @s z

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s xm
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s ym
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s zm