## by Tschipcraft

execute as @r at @s run function deathanimations:initalise
execute as @e[type=area_effect_cloud,tag=d_a_p] at @s run function deathanimations:initalise

schedule function deathanimations:loop/detect_entities 6t
