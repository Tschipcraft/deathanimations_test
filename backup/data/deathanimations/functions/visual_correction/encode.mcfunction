## by Tschipcraft

execute as @s[nbt={Small:1b}] run tp @s ~ ~0.73 ~

# head
execute as @s[tag=head] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches 135..220 positioned ~ ~-1.4 ~ run tp @s ~ ~0.57 ~
execute as @s[tag=head] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches -180..-135 positioned ~ ~-1.4 ~ run tp @s ~ ~0.57 ~
execute as @s[tag=head,tag=small_head] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches 135..220 positioned ~ ~-1.4 ~ run tp @s ~ ~-0.171 ~
execute as @s[tag=head,tag=small_head] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches -180..-135 positioned ~ ~-1.4 ~ run tp @s ~ ~-0.171 ~

execute as @s[tag=head] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches 45..135 positioned ~ ~-1.4 ~ run tp @s ~ ~0.26 ~
execute as @s[tag=head] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches -135..-45 positioned ~ ~-1.4 ~ run tp @s ~ ~0.26 ~
execute as @s[tag=head,tag=small_head] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches 45..135 positioned ~ ~-1.4 ~ run tp @s ~ ~-0.078 ~
execute as @s[tag=head,tag=small_head] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches -135..-45 positioned ~ ~-1.4 ~ run tp @s ~ ~-0.078 ~

# Big Torso
execute as @s[tag=big_torso] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches 135..220 positioned ~ ~-1.4 ~ run tp @s ~ ~0.26 ~
execute as @s[tag=big_torso] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches -180..-135 positioned ~ ~-1.4 ~ run tp @s ~ ~0.26 ~

# unused
##execute as @s[tag=head] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches 135..220 positioned ~ ~-1.4 ~ run tp @s ~ ~0.26 ~
##execute as @s[tag=head] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches -180..-135 positioned ~ ~-1.4 ~ run tp @s ~ ~0.26 ~

# arm
execute as @s[tag=arm] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches 45..135 positioned ~ ~-1.4 ~ run tp @s ~ ~0.26 ~
execute as @s[tag=arm] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches -135..-45 positioned ~ ~-1.4 ~ run tp @s ~ ~0.26 ~

# Not chestplate
execute as @s[tag=!head,tag=!chestplate,tag=!arm] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches -90 positioned ~ ~-1.4 ~ run tp @s ~ ~0.10 ~
execute as @s[tag=arm,tag=!chestplate] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches -180 positioned ~ ~-1.4 ~ run tp @s ~ ~0.14 ~
execute as @s[tag=arm,tag=!chestplate] positioned ~ ~1.4 ~ if score @e[tag=bodypart,limit=1,sort=nearest] rotation matches 180 positioned ~ ~-1.4 ~ run tp @s ~ ~0.14 ~
