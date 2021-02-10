## by Tschipcraft


execute as @s[tag=arm] store result entity @s Pose.Head[0] float -1 run scoreboard players get @s rotation
execute as @s[tag=torso] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s rotation
execute as @s[tag=leg] store result entity @s Pose.Head[0] float -1 run scoreboard players get @s rotation
execute as @s[tag=head] store result entity @s Pose.Head[0] float -1 run scoreboard players get @s rotation
execute as @s[tag=item] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s rotation
execute as @s[tag=chestplate] store result entity @s Pose.Body[0] float -1 run scoreboard players get @s rotation
