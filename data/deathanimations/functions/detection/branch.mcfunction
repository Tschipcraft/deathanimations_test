##by Tschipcraft


execute as @s[nbt={Item:{tag:{da_entity:phantom}}}] at @s run function deathanimations:summon_phantom
execute as @s[nbt={Item:{tag:{da_entity:endermite}}}] at @s run function deathanimations:summon_endermite

#execute as @s[nbt={Item:{tag:{da_entity:zombie,da_ragdoll:1b}}}] unless data entity @s {Item:{tag:{da_is_baby:1b}}} at @s positioned ~ ~1 ~ run function deathanimations:ragdoll_create_zombie
#execute as @s[nbt={Item:{tag:{da_entity:zombie}}}] unless entity @s[nbt={Item:{tag:{da_ragdoll:1b}}}] at @s run function deathanimations:summon/summon_zombie
#execute as @s[nbt={Item:{tag:{da_entity:zombie}}}] if entity @s[nbt={Item:{tag:{da_ragdoll:1b}}}] if data entity @s {Item:{tag:{da_is_baby:1b}}} at @s run function deathanimations:summon/summon_zombie

# Inherit rotation
data modify entity @s Rotation set from entity @s Item.tag.Rotation

execute rotated as @s run function deathanimations:detection/branch_auto


## //TODO:
# Iron Golem
# Ravager
# Endermite
# include phantom in script
