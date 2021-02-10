## by Tschipcraft

execute as @s[scores={age=..50}] at @s at @e[type=#deathanimations:marker_entities,tag=bodypart,sort=random,scores={age=..50},distance=..40] if score @s correction = @e[type=#deathanimations:marker_entities,tag=bodypart,sort=nearest,limit=1] correction run function deathanimations:visual_correction/found
execute as @s[scores={age=200..210}] at @s at @e[type=#deathanimations:marker_entities,tag=bodypart,sort=random,scores={age=200..210},distance=..40] if score @s correction = @e[type=#deathanimations:marker_entities,tag=bodypart,sort=nearest,limit=1] correction run function deathanimations:visual_correction/found
