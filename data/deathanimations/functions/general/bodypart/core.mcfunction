##by Tschipcraft
# Calculates bodypart positions 'n shit (~ ~ ~/@s =! bodypart entity)

# Collision
execute as @s[tag=!iron_golem,tag=!ravager] at @s if entity @e[type=!#deathanimations:physic_ignore,distance=..0.5] run function deathanimations:general/bodypart/push/bodypart_push
execute as @s[tag=!iron_golem,tag=!ravager] at @s if entity @e[type=#deathanimations:marker_entities,tag=bodypart,distance=0.00001..0.2] run function deathanimations:bodypart_push


# Bounce off blocks
execute if block ~ ~-0.1 ~ #deathanimations:nonsolid unless block ~0.2 ~-0.1 ~ #deathanimations:noncubic run data merge entity @s {Motion:[-0.2,0.1,0.0]}
execute if block ~ ~-0.1 ~ #deathanimations:nonsolid unless block ~-0.2 ~-0.1 ~ #deathanimations:noncubic run data merge entity @s {Motion:[0.2,0.1,0.0]}
execute if block ~ ~-0.1 ~ #deathanimations:nonsolid unless block ~ ~-0.1 ~0.2 #deathanimations:noncubic run data merge entity @s {Motion:[0.0,0.1,-0.2]}
execute if block ~ ~-0.1 ~ #deathanimations:nonsolid unless block ~ ~-0.1 ~-0.2 #deathanimations:noncubic run data merge entity @s {Motion:[0.0,0.1,0.2]}

# Add initial impact motion
execute if score @s age matches 1 at @s run function deathanimations:general/bodypart/add_impact_motion

# Position correction
execute if score Global part_lifetime matches 1.. run execute as @s[scores={age=..70,timeout_parts=..499}] at @s unless block ~ ~ ~ #deathanimations:not_solid if block ~ ~1 ~ #deathanimations:not_solid run tp @s ~ ~1 ~

# On Ground?
data merge storage d_a:bodypart {on_ground:0b}
execute if entity @s[nbt={OnGround:1b}] run data merge storage d_a:bodypart {on_ground:1b}

# Despawn
execute if score Global part_lifetime matches ..2 if data storage d_a:bodypart {on_ground:1b} run scoreboard players add @s timeout_parts 1
execute if score Global part_lifetime matches 0 if data storage d_a:bodypart {on_ground:1b} run scoreboard players add @s timeout_parts 2
execute if score Global part_lifetime matches 0 if data storage d_a:bodypart {on_ground:1b} run scoreboard players add @s[scores={timeout_parts=..500}] timeout_parts 10

execute if data storage d_a:bodypart {on_ground:0b} run scoreboard players set @s[scores={timeout_parts=500..}] timeout_parts 400

tag @s[scores={timeout_parts=951..}] add da_clear


# Search up visual counterpart visual entity and finish
execute at @s run function deathanimations:general/bodypart/search
scoreboard players add @s age 1
