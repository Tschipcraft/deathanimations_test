## by Tschipcraft

execute as @s[tag=arm] at @s positioned ~ ~-1.4 ~ store result entity @e[tag=arm,tag=visual,distance=..1,sort=nearest,limit=1] Pose.Head[0] float -1 run scoreboard players get @s rotation
execute as @s[tag=torso] at @s positioned ~ ~-1.4 ~ store result entity @e[tag=torso,tag=visual,distance=..1,sort=nearest,limit=1] Pose.Head[0] float 1 run scoreboard players get @s rotation
execute as @s[tag=leg] at @s positioned ~ ~-1.4 ~ store result entity @e[tag=leg,tag=visual,distance=..1,sort=nearest,limit=1] Pose.Head[0] float -1 run scoreboard players get @s rotation
execute as @s[tag=head] at @s positioned ~ ~-1.4 ~ store result entity @e[tag=head,tag=visual,distance=..1,sort=nearest,limit=1] Pose.Head[0] float -1 run scoreboard players get @s rotation
execute as @s[tag=item] at @s positioned ~ ~-1.4 ~ store result entity @e[tag=item,tag=visual,distance=..1,sort=nearest,limit=1] Pose.Head[0] float 1 run scoreboard players get @s rotation
execute as @s[tag=chestplate] at @s positioned ~ ~-1.4 ~ store result entity @e[tag=chestplate,tag=visual,distance=..1,sort=nearest,limit=1] Pose.Body[0] float -1 run scoreboard players get @s rotation

kill @s
