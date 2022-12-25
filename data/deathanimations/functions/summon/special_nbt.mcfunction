##by Tschipcraft

execute if entity @s[nbt={Item:{tag:{da_no_knockback:1b}}}] run tag @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] add da_no_knockback
execute if entity @s[nbt={Item:{tag:{da_magic_death:1b}}}] run particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 1 10
execute if entity @s[nbt={Item:{tag:{da_magic_death:1b}}}] run tag @e[type=minecraft:armor_stand,tag=visual,scores={da_id=1}] add da_magical
execute if entity @s[nbt={Item:{tag:{da_projectile_death:1b}}}] run tag @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] add da_projectile_death
execute if entity @s[nbt={Item:{tag:{da_trident_death:1b}}}] run tag @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] add da_trident_death
execute if entity @s[nbt={Item:{tag:{da_explosion_death:1b}}}] run tag @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] add da_explosion_death
execute if entity @s[nbt={Item:{tag:{da_player_death:1b}}}] run tag @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] add da_player_death

execute if entity @s[nbt={Item:{tag:{da_is_baby:1b}}}] as @e[type=minecraft:armor_stand,tag=visual,scores={da_id=1}] run data merge entity @s {Small:1b}


data modify storage d_a:detection Fire set from entity @s Item.tag.Fire
execute as @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] run data modify entity @s Fire set from storage d_a:detection Fire

data modify storage d_a:detection Rotation set from entity @s Item.tag.Rotation
execute as @e[type=minecraft:armor_stand,tag=visual,scores={da_id=1}] run data modify entity @s Rotation set from storage d_a:detection Rotation

# Apply killer momentum
data modify entity @s Motion set from entity @s Item.tag.K_Motion

# Get current motion
execute as @s store result score @s xm run data get entity @s Motion[0] 100
execute as @s store result score @s ym run data get entity @s Motion[1] 100
execute as @s store result score @s zm run data get entity @s Motion[2] 100

# Apply victim momentum
data modify storage d_a:detection Motion set from entity @s Item.tag.Motion
execute as @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] run data modify entity @s Motion set from storage d_a:detection Motion

# Add motions together
execute as @s store result score @s x run data get entity @s Motion[0] 100
execute as @s store result score @s y run data get entity @s Motion[1] 100
execute as @s store result score @s z run data get entity @s Motion[2] 100

scoreboard players operation @s xm += @s x
scoreboard players operation @s ym += @s y
scoreboard players operation @s zm += @s z

execute store result entity @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1},limit=1] Motion[0] double 0.01 run scoreboard players get @s xm
execute store result entity @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1},limit=1] Motion[1] double 0.01 run scoreboard players get @s ym
execute store result entity @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1},limit=1] Motion[2] double 0.01 run scoreboard players get @s zm



#data modify storage d_a:detection ActiveEffects set from entity @s Item.tag.ActiveEffects
#execute as @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] run data modify entity @s ActiveEffects set from storage d_a:detection ActiveEffects


kill @s[type=minecraft:item]
