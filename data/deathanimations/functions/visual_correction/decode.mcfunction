## by Tschipcraft

execute as @s[nbt={Small:1b}] run tp @s ~ ~-0.73 ~

# head
execute as @s[tag=head] if score @s rotation matches 135..220 at @s run tp @s ~ ~-0.57 ~
execute as @s[tag=head] if score @s rotation matches -180..-135 at @s run tp @s ~ ~-0.57 ~
execute as @s[tag=head,tag=small_head] if score @s rotation matches 135..220 at @s run tp @s ~ ~-0.171 ~
execute as @s[tag=head,tag=small_head] if score @s rotation matches -180..-135 at @s run tp @s ~ ~-0.171 ~

execute as @s[tag=head] if score @s rotation matches 45..135 at @s run tp @s ~ ~-0.26 ~
execute as @s[tag=head] if score @s rotation matches -135..-45 at @s run tp @s ~ ~-0.26 ~
execute as @s[tag=head,tag=small_head] if score @s rotation matches 45..135 at @s run tp @s ~ ~-0.078 ~
execute as @s[tag=head,tag=small_head] if score @s rotation matches -135..-45 at @s run tp @s ~ ~-0.078 ~

# Big Torso
execute as @s[tag=big_torso] if score @s rotation matches 135..220 at @s run tp @s ~ ~-0.26 ~
execute as @s[tag=big_torso] if score @s rotation matches -180..-135 at @s run tp @s ~ ~-0.26 ~

# unused
##execute as @s[tag=head] if score @s rotation matches 135..220 run tp @s ~ ~0.26 ~
##execute as @s[tag=head] if score @s rotation matches -180..-135 run tp @s ~ ~0.26 ~

# arm
execute as @s[tag=arm] if score @s rotation matches 45..135 at @s run tp @s ~ ~-0.26 ~
execute as @s[tag=arm] if score @s rotation matches -135..-45 at @s run tp @s ~ ~-0.26 ~

# Not chestplate
execute as @s[tag=!head,tag=!chestplate,tag=!arm] if score @s rotation matches -90 at @s run tp @s ~ ~-0.10 ~
execute as @s[tag=arm,tag=!chestplate] if score @s rotation matches -180 at @s run tp @s ~ ~-0.14 ~
execute as @s[tag=arm,tag=!chestplate] if score @s rotation matches 180 at @s run tp @s ~ ~-0.14 ~

# items
execute as @s[tag=item,tag=bow] at @s run tp @s ~ ~-0.03 ~
execute as @s[tag=item,tag=!bow] at @s run tp @s ~ ~-0.10 ~

tag @s remove encode
