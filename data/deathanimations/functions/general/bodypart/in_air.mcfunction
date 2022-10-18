##by Tschipcraft
# Adds rotation to the visual entity (~ ~/@s = visual entity, ~ ~ ~/@e[tag=this] = bodypart entity; condition = in_air)

execute unless block ~ ~ ~ water unless block ~ ~ ~ cobweb run tp @s ~ ~-1.4 ~ ~-25 ~
execute if block ~ ~ ~ water run tp @s ~ ~-1.4 ~ ~5 ~
execute if block ~ ~ ~ cobweb run tp @s ~ ~-1.4 ~ ~1 ~

scoreboard players set @s[scores={rotation=181..}] rotation -180
execute unless block ~ ~ ~ water unless block ~ ~ ~ cobweb run scoreboard players add @s rotation 25
execute if block ~ ~ ~ water run scoreboard players add @s rotation 5
execute if block ~ ~ ~ cobweb run scoreboard players add @s rotation 1

# Update rotation
execute if score global entity_count matches ..50 run function deathanimations:general/rotation/update
