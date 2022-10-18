## by Tschipcraft

execute as @e[distance=..10,type=!#deathanimations:projectiles,type=!#deathanimations:physic_ignore,tag=!exclude,predicate=deathanimations:is_adult] at @s unless entity @s[scores={initalise=1..}] run function deathanimations:summon_detection

#execute as @e[scores={e_detection=1..},distance=..10] at @s run function deathanimations:summon_detection
