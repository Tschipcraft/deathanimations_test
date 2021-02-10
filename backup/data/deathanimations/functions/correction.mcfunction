## by Tschipcraft

execute as @s[scores={age=..50}] at @s at @e[tag=bodypart,sort=random,scores={age=..50},distance=..40] if score @s correction = @e[tag=bodypart,sort=nearest,limit=1] correction run tp @s ~ ~-1.4 ~
execute as @s[scores={age=200..210}] at @s at @e[tag=bodypart,sort=random,scores={age=200..210},distance=..40] if score @s correction = @e[tag=bodypart,sort=nearest,limit=1] correction run tp @s ~ ~-1.4 ~
