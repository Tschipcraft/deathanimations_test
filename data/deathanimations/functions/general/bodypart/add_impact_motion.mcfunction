##by Tschipcraft
# Adds motion from entity death impact to @s ( =! bodypart entity)

# Apply motion direction
tp @s ~ ~ ~ facing entity @e[type=!#deathanimations:physic_ignore,sort=nearest,limit=1,distance=..10] feet
#execute if entity @e[tag=arrow,distance=..9] run tp @s ~ ~ ~ facing entity @e[tag=arrow,limit=1,sort=furthest,distance=..9]
#execute if entity @e[tag=explosion,distance=..9] run tp @s ~ ~ ~ facing entity @e[tag=explosion,limit=1,sort=nearest,distance=..9]
#execute if entity @e[tag=explosion,distance=..9] run tag @s add exploded
#execute if entity @e[tag=arrow,distance=..9] run tag @s add arrowed
execute as @s[tag=da_player_death] at @s run function deathanimations:general/source/player
execute as @s[tag=da_projectile_death] at @s run function deathanimations:general/source/projectile
execute as @s[tag=da_explosion_death] at @s run function deathanimations:general/source/explosion
# TODO: add more sources

# Apply motion
execute as @s[tag=!da_no_knockback,tag=!iron_golem,tag=!ravager] at @s run function deathanimations:tick

# Add swing momentum (Integrate into tick?)
execute as @s[tag=da_player_death] at @s if entity @e[type=minecraft:marker,tag=da_player_swing,distance=..7] run function deathanimations:general/source/player_swing

# Finalize entity to given settings
function deathanimations:general/bodypart_finalize
