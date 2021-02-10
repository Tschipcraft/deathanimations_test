## by Tschipcraft

execute as @s[scores={cooldown=1..}] positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1,scores={cooldown=..30}] if score @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-0.6 ~
##execute as @s[scores={cooldown=1..}] positioned ~ ~1.4 ~ at @e[tag=ravagerbody,sort=nearest,limit=1,scores={cooldown=20..30}] if score @e[tag=ravagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-0.8 ~
execute as @s[scores={cooldown=1..}] positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1,scores={cooldown=30..40}] if score @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.0 ~
execute as @s[scores={cooldown=1..}] positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1,scores={cooldown=40..50}] if score @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.3 ~
execute as @s[scores={cooldown=1..}] positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1,scores={cooldown=50..}] if score @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.65 ~

scoreboard players set @s b_test 0
execute as @s[scores={cooldown=..30}] at @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=random,distance=..3] if score @s lame_correction = @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=nearest,limit=1] lame_correction run function deathanimations:visual_correction/ravager/0
execute as @s[scores={cooldown=30..40}] at @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=random,distance=..3] if score @s lame_correction = @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=nearest,limit=1] lame_correction run function deathanimations:visual_correction/ravager/1
execute as @s[scores={cooldown=40..50}] at @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=random,distance=..3] if score @s lame_correction = @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=nearest,limit=1] lame_correction run function deathanimations:visual_correction/ravager/2
execute as @s[scores={cooldown=50..}] at @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=random,distance=..3] if score @s lame_correction = @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=nearest,limit=1] lame_correction run function deathanimations:visual_correction/ravager/3

execute as @s[scores={b_test=0}] at @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=random,distance=..5] if score @s lame_correction = @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=nearest,limit=1] lame_correction run function deathanimations:visual_correction/found
execute as @s[scores={b_test=0}] at @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=random,distance=..50] if score @s lame_correction = @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=nearest,limit=1] lame_correction run function deathanimations:visual_correction/found


execute as @s[scores={cooldown=..53}] run function deathanimations:animation/ravager
kill @s[scores={cooldown=1000..}]

scoreboard players add @s[scores={cooldown=1..}] cooldown 1
