## by Tschipcraft

tp @s ~ ~ ~
execute as @s[nbt={Small:1b}] at @s run tp @s ~ ~0.73 ~

# head
execute as @s[tag=vanilla_head] at @s if score @s rotation matches 135..220 run tp @s ~ ~0.57 ~
execute as @s[tag=vanilla_head] at @s if score @s rotation matches -180..-135 run tp @s ~ ~0.57 ~
execute as @s[tag=vanilla_head,tag=small_head] at @s if score @s rotation matches 135..220 run tp @s ~ ~0.171 ~
execute as @s[tag=vanilla_head,tag=small_head] at @s if score @s rotation matches -180..-135 run tp @s ~ ~0.171 ~

execute as @s[tag=vanilla_head] at @s if score @s rotation matches 45..135 run tp @s ~ ~0.26 ~
execute as @s[tag=vanilla_head] at @s if score @s rotation matches -135..-45 run tp @s ~ ~0.26 ~
execute as @s[tag=vanilla_head,tag=small_head] at @s if score @s rotation matches 45..135 run tp @s ~ ~0.078 ~
execute as @s[tag=vanilla_head,tag=small_head] at @s if score @s rotation matches -135..-45 run tp @s ~ ~0.078 ~

# items
execute as @s[tag=item,tag=bow] at @s run tp @s ~ ~0.03 ~
execute as @s[tag=item,tag=!bow] at @s run tp @s ~ ~0.10 ~

function deathanimations:visual_correction/encode_auto

tag @s add encode
