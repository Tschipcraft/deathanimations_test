## by Tschipcraft

execute as @s[nbt={Small:1b}] run tp @s ~ ~-0.73 ~

# head
execute as @s[tag=vanilla_head] if score @s rotation matches 135..220 at @s run tp @s ~ ~-0.57 ~
execute as @s[tag=vanilla_head] if score @s rotation matches -180..-135 at @s run tp @s ~ ~-0.57 ~
execute as @s[tag=vanilla_head,tag=small_head] if score @s rotation matches 135..220 at @s run tp @s ~ ~-0.171 ~
execute as @s[tag=vanilla_head,tag=small_head] if score @s rotation matches -180..-135 at @s run tp @s ~ ~-0.171 ~

execute as @s[tag=vanilla_head] if score @s rotation matches 45..135 at @s run tp @s ~ ~-0.26 ~
execute as @s[tag=vanilla_head] if score @s rotation matches -135..-45 at @s run tp @s ~ ~-0.26 ~
execute as @s[tag=vanilla_head,tag=small_head] if score @s rotation matches 45..135 at @s run tp @s ~ ~-0.078 ~
execute as @s[tag=vanilla_head,tag=small_head] if score @s rotation matches -135..-45 at @s run tp @s ~ ~-0.078 ~

# items
execute as @s[tag=item,tag=bow] at @s run tp @s ~ ~-0.03 ~
execute as @s[tag=item,tag=!bow] at @s run tp @s ~ ~-0.10 ~

function deathanimations:visual_correction/decode_auto

tag @s remove encode
