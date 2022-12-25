##by Tschipcraft
# Calculates player swing motion

execute at @a[tag=this] rotated as @a[tag=this] positioned ~ ~1.6 ~ run tp @s ^ ^ ^1

# Calculates player swing motion
scoreboard players set -1 x -1

scoreboard players operation @s dx = @s x
execute store result score @s x run data get entity @s Pos[0] 71
scoreboard players operation @s dx -= @s x
scoreboard players operation @s dx *= -1 x

scoreboard players operation @s dy = @s y
execute store result score @s y run data get entity @s Pos[1] 71
scoreboard players operation @s dy -= @s y
scoreboard players operation @s dy *= -1 x

scoreboard players operation @s dz = @s z
execute store result score @s z run data get entity @s Pos[2] 71
scoreboard players operation @s dz -= @s z
scoreboard players operation @s dz *= -1 x

# Remove tag (operation successful)
tag @a[tag=this] remove this

# Debug
#tellraw @a [{"text":"X: "},{"score":{"name":"@s","objective":"dx"}},{"text":", Y: "},{"score":{"name":"@s","objective":"dy"}},{"text":", Z: "},{"score":{"name":"@s","objective":"dz"}}]
