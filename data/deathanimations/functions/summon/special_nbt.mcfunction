##by Tschipcraft

execute if entity @s[nbt={Item:{tag:{da_no_knockback:1b}}}] run tag @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] add da_no_knockback
execute if entity @s[nbt={Item:{tag:{da_magic_death:1b}}}] run particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 1 10
execute if entity @s[nbt={Item:{tag:{da_magic_death:1b}}}] run tag @e[type=minecraft:armor_stand,tag=visual,scores={da_id=1}] add da_magical
execute if entity @s[nbt={Item:{tag:{da_projectile_death:1b}}}] run tag @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] add da_projectile_death
execute if entity @s[nbt={Item:{tag:{da_explosion_death:1b}}}] run tag @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] add da_explosion_death
execute if entity @s[nbt={Item:{tag:{da_player_death:1b}}}] run tag @e[type=minecraft:armor_stand,tag=bodypart,scores={da_id=1}] add da_player_death

kill @s[type=minecraft:item]
