## by Tschipcraft

tp @s ~ ~ ~
execute as @s[nbt={Small:1b}] at @s run tp @s ~ ~0.73 ~


# items
execute as @s[tag=item,tag=bow] at @s run tp @s ~ ~0.03 ~
execute as @s[tag=item,tag=!bow] at @s run tp @s ~ ~0.10 ~

function deathanimations:visual_correction/encode_auto

tag @s add encode
