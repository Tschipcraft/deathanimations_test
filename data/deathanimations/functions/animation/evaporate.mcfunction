## by Tschipcraft

execute as @s[tag=creeperbody] run particle item gunpowder ~ ~ ~ 0.1 0.1 0.1 0.5 40
execute as @s[tag=spiderbody] run particle minecraft:item_slime ~ ~ ~ 0.1 0.1 0.1 0.5 40
execute as @s[tag=!creeperbody,tag=!spiderbody,tag=!skeletonbody,tag=!cave_spiderbody] run particle item redstone_block ~ ~ ~ 0.1 0.1 0.1 0.5 40 normal @a[scores={blood_local=1}]

kill @s
