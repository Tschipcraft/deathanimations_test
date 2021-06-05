##by Tschipcraft

execute as @s[nbt={Item:{tag:{da_entity:pig}}}] at @s run function deathanimations:summon_pig_part
execute as @s[nbt={Item:{tag:{da_entity:cow}}}] at @s run function deathanimations:summon_cow_part
execute as @s[nbt={Item:{tag:{da_entity:sheep}}}] at @s run function deathanimations:summon_sheep_part
execute as @s[nbt={Item:{tag:{da_entity:spider}}}] at @s run function deathanimations:summon_spider
execute as @s[nbt={Item:{tag:{da_entity:cave_spider}}}] at @s run function deathanimations:summon_cave_spider
execute as @s[nbt={Item:{tag:{da_entity:creeper}}}] at @s run function deathanimations:summon_creeper
execute as @s[nbt={Item:{tag:{da_entity:phantom}}}] at @s run function deathanimations:summon_phantom

execute as @s[nbt={Item:{tag:{da_entity:zombie,da_ragdoll:1b}}}] at @s positioned ~ ~1 ~ run function deathanimations:ragdoll_create_zombie
execute as @s[nbt={Item:{tag:{da_entity:zombie}}}] unless entity @s[nbt={Item:{tag:{da_ragdoll:1b}}}] at @s run function deathanimations:summon_zombie
execute as @s[nbt={Item:{tag:{da_entity:husk}}}] at @s run function deathanimations:summon_husk
execute as @s[nbt={Item:{tag:{da_entity:drowned}}}] at @s run function deathanimations:summon_drowned

execute as @s[nbt={Item:{tag:{da_entity:skeleton}}}] at @s run function deathanimations:summon_skeleton
execute as @s[nbt={Item:{tag:{da_entity:stray}}}] at @s run function deathanimations:summon_stray
execute as @s[nbt={Item:{tag:{da_entity:wither_skeleton}}}] at @s run function deathanimations:summon_wither_skeleton
