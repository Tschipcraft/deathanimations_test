##by Tschipcraft
# Displays particles for the given visual entity (~ ~ ~/~ ~/@s = visual entity)

execute if block ~ ~1.4 ~ water run function deathanimations:general/particle/water
execute unless block ~ ~1.4 ~ water run function deathanimations:general/particle/land

execute as @s[tag=torso,tag=da_magical] positioned ^ ^ ^ run particle minecraft:witch ~ ~1.5 ~ 0.1 0 0.1 1 1 normal
execute as @s[tag=head,tag=da_magical] positioned ^ ^0.35 ^ run particle minecraft:witch ~ ~1.1 ~ 0.01 0 0.01 1 1 normal
execute as @s[tag=leg,tag=da_magical] positioned ^0.25 ^ ^ run particle minecraft:witch ~ ~1.5 ~ 0.01 0 0.01 1 1 normal
execute as @s[tag=arm,tag=da_magical] positioned ^0.25 ^ ^ run particle minecraft:witch ~ ~1.5 ~ 0.01 0 0.01 1 1 normal
