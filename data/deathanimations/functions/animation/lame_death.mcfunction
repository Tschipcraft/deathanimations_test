## by Tschipcraft

scoreboard players add @s[scores={cooldown=1..}] cooldown 1

scoreboard players set @s b_test 0
execute at @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=random,distance=..10] if score @s lame_correction = @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=nearest,limit=1] lame_correction run function deathanimations:visual_correction/found

execute as @s[scores={b_test=0}] at @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=random,distance=..20] if score @s lame_correction = @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=nearest,limit=1] lame_correction run function deathanimations:visual_correction/found
execute as @s[scores={b_test=0}] at @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=random,distance=..50] if score @s lame_correction = @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=nearest,limit=1] lame_correction run function deathanimations:visual_correction/found


execute as @s[type=#deathanimations:marker_entities,tag=animal_death] at @s run function deathanimations:animation/animal_death

execute as @s[type=#deathanimations:marker_entities,tag=villager_like_death] at @s run function deathanimations:animation/villager_like_death

kill @s[tag=villager_like_death,scores={cooldown=1000..}]

kill @s[tag=animal_death,scores={cooldown=1000..}]
