## by Tschipcraft

# Faster despawn rate
execute as @e[type=#deathanimations:marker_entities,tag=low_p_mode,scores={timeout_parts=500..}] at @s run tp @s ~ ~-0.002 ~
scoreboard players add @e[type=#deathanimations:marker_entities,tag=low_p_mode] timeout_parts 2

# Avoid leftovers
kill @e[type=armor_stand,scores={age=1599..}]

# Kill
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={age=35..},tag=OnGround,tag=!playerbody] run tag @s add da_low_p_activate
#execute if score global entity_count matches 25.. run function deathanimations:clear

#execute as @e[type=#deathanimations:marker_entities,tag=low_p_mode,scores={timeout_parts=..500}] at @s run function deathanimations:low_p_mode/revive
