## by Tschipcraft

execute as @s[nbt={Small:1b}] run tp @s ~ ~-0.73 ~


# items
execute as @s[tag=item,tag=bow] at @s run tp @s ~ ~-0.03 ~
execute as @s[tag=item,tag=!bow] at @s run tp @s ~ ~-0.10 ~

function deathanimations:visual_correction/decode_auto

tag @s remove encode
