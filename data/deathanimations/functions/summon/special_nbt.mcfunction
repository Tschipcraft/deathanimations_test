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
execute as @e[type=minecraft:armor_stand,tag=visual,scores={da_id=1}] run data modify entity @s Fire set from storage d_a:detection Fire


kill @s[type=minecraft:item]
