##by Tschipcraft
# Displays particles for the given visual entity (~ ~ ~/~ ~/@s = visual entity) on land

execute as @s[tag=torso,tag=bloody] positioned ^ ^ ^ run particle minecraft:block redstone_block ~ ~1.5 ~ 0.1 0 0.1 1 1 normal @a[scores={blood_local=1}]
execute as @s[tag=head,tag=bloody] positioned ^ ^0.35 ^ run particle minecraft:block redstone_block ~ ~1.1 ~ 0.01 0 0.01 1 1 normal @a[scores={blood_local=1}]
execute as @s[tag=leg,tag=bloody] positioned ^0.25 ^ ^ run particle minecraft:block redstone_block ~ ~1.5 ~ 0.01 0 0.01 1 1 normal @a[scores={blood_local=1}]
execute as @s[tag=arm,tag=bloody] positioned ^0.25 ^ ^ run particle minecraft:block redstone_block ~ ~1.5 ~ 0.01 0 0.01 1 1 normal @a[scores={blood_local=1}]

execute as @s[tag=torso,tag=custom_bloody] positioned ^ ^ ^ run particle minecraft:item slime_ball ~ ~1.5 ~ 0.1 0 0.1 0.1 1 normal @a[scores={blood_local=1}]
execute as @s[tag=head,tag=custom_bloody] positioned ^ ^0.35 ^ run particle minecraft:item slime_ball ~ ~1.1 ~ 0.01 0 0.01 0.1 1 normal @a[scores={blood_local=1}]
execute as @s[tag=leg,tag=custom_bloody] positioned ^0.25 ^ ^ run particle minecraft:item slime_ball ~ ~1.5 ~ 0.01 0 0.01 0.1 1 normal @a[scores={blood_local=1}]
execute as @s[tag=arm,tag=custom_bloody] positioned ^0.25 ^ ^ run particle minecraft:item slime_ball ~ ~1.5 ~ 0.01 0 0.01 0.1 1 normal @a[scores={blood_local=1}]

execute as @s[tag=torso,tag=sandy] positioned ^ ^ ^ run particle minecraft:block sand ~ ~1.5 ~ 0.1 0 0.1 1 1 normal
execute as @s[tag=head,tag=sandy] positioned ^ ^0.35 ^ run particle minecraft:block sand ~ ~1.1 ~ 0.01 0 0.01 1 1 normal
execute as @s[tag=leg,tag=sandy] positioned ^0.25 ^ ^ run particle minecraft:block sand ~ ~1.5 ~ 0.01 0 0.01 1 1 normal
execute as @s[tag=arm,tag=visual,tag=sandy] positioned ^0.25 ^ ^ run particle minecraft:block sand ~ ~1.5 ~ 0.01 0 0.01 1 1 normal

execute as @s[tag=torso,tag=watery] positioned ^ ^ ^ run particle minecraft:splash ~ ~1.5 ~ 0.1 0 0.1 1 1 normal
execute as @s[tag=head,tag=watery] positioned ^ ^0.35 ^ run particle minecraft:splash ~ ~1.1 ~ 0.01 0 0.01 1 1 normal
execute as @s[tag=leg,tag=watery] positioned ^0.25 ^ ^ run particle minecraft:splash ~ ~1.5 ~ 0.01 0 0.01 1 1 normal
execute as @s[tag=arm,tag=watery] positioned ^0.25 ^ ^ run particle minecraft:splash ~ ~1.5 ~ 0.01 0 0.01 1 1 normal
