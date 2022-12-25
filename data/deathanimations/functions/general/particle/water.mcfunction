##by Tschipcraft
# Displays particles for the given visual entity (~ ~ ~/~ ~/@s = visual entity) inside water

execute as @s[tag=torso,tag=bloody] positioned ^ ^ ^ run particle minecraft:dust 1 0.1 0 3 ~ ~1.5 ~ 0.1 0 0.1 1 1 normal @a[scores={blood_local=1}]
execute as @s[tag=head,tag=bloody] positioned ^ ^0.35 ^ run particle minecraft:dust 1 0.1 0 3 ~ ~1.1 ~ 0.01 0 0.01 1 1 normal @a[scores={blood_local=1}]
execute as @s[tag=leg,tag=bloody] positioned ^0.25 ^ ^ run particle minecraft:dust 1 0.1 0 3 ~ ~1.5 ~ 0.01 0 0.01 1 1 normal @a[scores={blood_local=1}]
execute as @s[tag=arm,tag=bloody] positioned ^0.25 ^ ^ run particle minecraft:dust 1 0.1 0 3 ~ ~1.5 ~ 0.01 0 0.01 1 1 normal @a[scores={blood_local=1}]

execute as @s[tag=torso,tag=custom_bloody] positioned ^ ^ ^ run particle minecraft:dust 0.082 0.706 0 2 ~ ~1.5 ~ 0.1 0 0.1 0.1 1 normal @a[scores={blood_local=1}]
execute as @s[tag=head,tag=custom_bloody] positioned ^ ^0.35 ^ run particle minecraft:dust 0.082 0.706 0 2 ~ ~1.1 ~ 0.01 0 0.01 0.1 1 normal @a[scores={blood_local=1}]
execute as @s[tag=leg,tag=custom_bloody] positioned ^0.25 ^ ^ run particle minecraft:dust 0.082 0.706 0 2 ~ ~1.5 ~ 0.01 0 0.01 0.1 1 normal @a[scores={blood_local=1}]
execute as @s[tag=arm,tag=custom_bloody] positioned ^0.25 ^ ^ run particle minecraft:dust 0.082 0.706 0 2 ~ ~1.5 ~ 0.01 0 0.01 0.1 1 normal @a[scores={blood_local=1}]

execute as @s[tag=torso,tag=sandy] positioned ^ ^ ^ run particle minecraft:dust 0.8 0.75 0.58 2 ~ ~1.5 ~ 0.1 0 0.1 1 1 normal
execute as @s[tag=head,tag=sandy] positioned ^ ^0.35 ^ run particle minecraft:dust 0.8 0.75 0.58 2 ~ ~1.1 ~ 0.01 0 0.01 1 1 normal
execute as @s[tag=leg,tag=sandy] positioned ^0.25 ^ ^ run particle minecraft:dust 0.8 0.75 0.58 2 ~ ~1.5 ~ 0.01 0 0.01 1 1 normal
execute as @s[tag=arm,tag=visual,tag=sandy] positioned ^0.25 ^ ^ run particle minecraft:dust 0.8 0.75 0.58 2 ~ ~1.5 ~ 0.01 0 0.01 1 1 normal

execute as @s[tag=torso,tag=watery] positioned ^ ^ ^ run particle minecraft:bubble ~ ~1.5 ~ 0.1 0 0.1 1 0 normal
execute as @s[tag=head,tag=watery] positioned ^ ^0.35 ^ run particle minecraft:bubble ~ ~1.1 ~ 0.01 0 0.01 1 0 normal
execute as @s[tag=leg,tag=watery] positioned ^0.25 ^ ^ run particle minecraft:bubble ~ ~1.5 ~ 0.01 0 0.01 1 0 normal
execute as @s[tag=arm,tag=watery] positioned ^0.25 ^ ^ run particle minecraft:bubble ~ ~1.5 ~ 0.01 0 0.01 1 0 normal
