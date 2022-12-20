##by Tschipcraft
# Does everything visual and logic that requires both counterparts (~ ~/@s = visual entity; ~ ~ ~/@e[tag=this] = bodypart entity)

# Lava kill
execute if block ~ ~ ~ lava run function deathanimations:general/bodypart/burn

# Clear picked up body parts
execute as @s[tag=!item] unless entity @s[nbt={ArmorItems:[{},{},{},{Count:1b}]}] run function deathanimations:general/bodypart/clear
execute as @s[tag=item] unless entity @s[nbt={HandItems:[{Count:1b},{}]}] run function deathanimations:general/bodypart/clear
execute as @s[tag=item] if entity @s[nbt={HandItems:[{id:"minecraft:barrier"}]}] run function deathanimations:general/bodypart/clear
execute as @s if entity @s[nbt={ArmorItems:[{id:"minecraft:barrier"}]}] run function deathanimations:general/bodypart/clear
#execute as @e[type=minecraft:armor_stand,tag=visual,tag=item] unless data entity @s HandItems[0].id run kill @s
#execute as @e[type=minecraft:armor_stand,tag=visual,tag=!item] unless data entity @s ArmorItems[3].id unless data entity @s ArmorItems[2].id run kill @s

# Despawn
execute if entity @e[type=minecraft:armor_stand,tag=this,tag=da_clear] run function deathanimations:general/bodypart/clear
execute as @s[scores={age=1599..}] run function deathanimations:general/bodypart/clear
scoreboard players operation @s timeout_parts = @e[type=minecraft:armor_stand,tag=this] timeout_parts

# On Ground?
execute as @s[tag=!OnGround] if data storage d_a:bodypart {on_ground:1b} run function deathanimations:general/rotation/set_onground
execute as @s[tag=OnGround] unless entity @s[scores={age=145..150}] if data storage d_a:bodypart {on_ground:0b} run tag @s remove OnGround

# Rotation
execute as @s[tag=!OnGround] run function deathanimations:general/bodypart/in_air

# Adjust Position
execute as @s[tag=OnGround] positioned ~ ~-1.425 ~ run function deathanimations:visual_correction/encode
execute as @s[tag=!OnGround] positioned ~ ~-1.425 ~ run tp @s ~ ~ ~

# Particles
execute as @s[scores={age=0..140}] at @s run function deathanimations:general/particle

# Finish
scoreboard players add @s age 1

# Low P mode
execute as @s[tag=da_low_p_activate,tag=OnGround] run kill @e[type=#deathanimations:marker_entities,tag=this]
execute as @s[tag=da_low_p_activate,tag=OnGround] run function deathanimations:low_p_mode/activate
