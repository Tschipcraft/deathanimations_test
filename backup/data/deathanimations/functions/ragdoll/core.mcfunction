## by Tschipcraft

execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso,scores={wait=1}] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,distance=..0.2] run function deathanimations:ragdoll_low
##execute as @s[tag=ragdoll_torso,scores={wait=1}] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,distance=0.8..] run function deathanimations:ragdoll_warm
execute as @s[tag=ragdoll_torso,scores={wait=1}] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_center,distance=..0.5] run function deathanimations:ragdoll_warm
execute as @s[tag=ragdoll_torso] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_center,distance=..0.8] run tp @s ^ ^ ^0.5
execute as @s[tag=ragdoll_torso] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_center,distance=..3.8] run tp @s ^ ^ ^3

execute as @s[tag=ragdoll_head,scores={wait=1}] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_center,distance=..0.2] run function deathanimations:ragdoll_low
execute as @s[tag=ragdoll_head,scores={wait=1}] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_part,distance=..0.5] run function deathanimations:ragdoll_warm
execute as @s[tag=ragdoll_head] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_part,distance=..0.8] run tp @s ^ ^ ^0.5
execute as @s[tag=ragdoll_head] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_part,distance=..3.8] run tp @s ^ ^ ^3


execute as @s[tag=ragdoll_right_arm,scores={wait=1}] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_center,distance=..0.2] run function deathanimations:ragdoll_low
execute as @s[tag=ragdoll_right_arm,scores={wait=1}] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_center,distance=..0.5] run function deathanimations:ragdoll_warm
execute as @s[tag=ragdoll_right_arm] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_part,distance=..0.8] run tp @s ^ ^ ^0.5
execute as @s[tag=ragdoll_right_arm] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_part,distance=..3.8] run tp @s ^ ^ ^3

execute as @s[tag=ragdoll_left_arm,scores={wait=1}] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_center,distance=..0.2] run function deathanimations:ragdoll_low
execute as @s[tag=ragdoll_left_arm,scores={wait=1}] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_center,distance=..0.5] run function deathanimations:ragdoll_warm
execute as @s[tag=ragdoll_left_arm] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_part,distance=..0.8] run tp @s ^ ^ ^0.5
execute as @s[tag=ragdoll_left_arm] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_part,distance=..3.8] run tp @s ^ ^ ^3


execute as @s[tag=ragdoll_right_leg,scores={wait=1}] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_center,distance=..0.2] run function deathanimations:ragdoll_low
execute as @s[tag=ragdoll_right_leg,scores={wait=1}] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_center,distance=..0.5] run function deathanimations:ragdoll_warm
execute as @s[tag=ragdoll_right_leg] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_part,distance=..0.8] run tp @s ^ ^ ^0.5
execute as @s[tag=ragdoll_right_leg] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_part,distance=..3.8] run tp @s ^ ^ ^3

execute as @s[tag=ragdoll_left_leg,scores={wait=1}] at @s if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_center,distance=..0.2] run function deathanimations:ragdoll_low
execute as @s[tag=ragdoll_left_leg,scores={wait=1}] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_center,distance=..0.5] run function deathanimations:ragdoll_warm
execute as @s[tag=ragdoll_left_leg] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_part,distance=..0.8] run tp @s ^ ^ ^0.5
execute as @s[tag=ragdoll_left_leg] at @s unless entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_part,distance=..3.8] run tp @s ^ ^ ^3



## Teleportation


execute as @s[tag=ragdoll_torso_visual] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,distance=..20] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,sort=nearest,limit=1] correction positioned ~ ~-0.1 ~ run tp @s ~ ~-1.2 ~
execute as @s[tag=ragdoll_torso_visual_prepare] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,distance=..20] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,sort=nearest,limit=1] correction positioned ~ ~-0.1 ~ run tp @s ~ ~0.3 ~ facing entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso,sort=nearest,limit=1]
##execute as @s[tag=ragdoll_torso_visual_prepare] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,sort=nearest,limit=1] correction if block ~ ~-1 ~ #deathanimations:not_solid at @s run tp @s ~ ~ ~ ~ ~-20

execute as @s[tag=ragdoll_head_visual] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_center,distance=..20] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_center,sort=nearest,limit=1] correction positioned ~ ~-0.1 ~ run tp @s ~ ~-1.2 ~
execute as @s[tag=ragdoll_head_visual_prepare] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_center,distance=..20] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_center,sort=nearest,limit=1] correction positioned ~ ~-0.1 ~ run tp @s ~ ~0.3 ~ facing entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head,sort=nearest,limit=1]
##execute as @s[tag=ragdoll_head_visual_prepare] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_center,sort=nearest,limit=1] if block ~ ~-1 ~ #deathanimations:not_solid at @s run tp @s ~ ~ ~ ~30 -10

execute as @s[tag=ragdoll_right_arm_visual] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_center,distance=..20] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_center,sort=nearest,limit=1] correction positioned ~ ~-0.1 ~ run tp @s ~ ~-1.2 ~
execute as @s[tag=ragdoll_right_arm_visual_prepare] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_center,distance=..20] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_center,sort=nearest,limit=1] correction positioned ~ ~-0.1 ~ run tp @s ~ ~0.3 ~ facing entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm,sort=nearest,limit=1]
##execute as @s[tag=ragdoll_right_arm_visual_prepare] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_center,sort=nearest,limit=1] if block ~ ~-1 ~ #deathanimations:not_solid at @s run tp @s ~ ~ ~ ~30 -10

execute as @s[tag=ragdoll_left_arm_visual] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_center,distance=..20] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_center,sort=nearest,limit=1] correction positioned ~ ~-0.1 ~ run tp @s ~ ~-1.2 ~
execute as @s[tag=ragdoll_left_arm_visual_prepare] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_center,distance=..20] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_center,sort=nearest,limit=1] correction positioned ~ ~-0.1 ~ run tp @s ~ ~0.3 ~ facing entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm,sort=nearest,limit=1]
##execute as @s[tag=ragdoll_left_arm_visual_prepare] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_center,sort=nearest,limit=1] if block ~ ~-1 ~ #deathanimations:not_solid at @s run tp @s ~ ~ ~ ~30 -10

execute as @s[tag=ragdoll_right_leg_visual] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_center,distance=..20] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_center,sort=nearest,limit=1] correction positioned ~ ~-0.1 ~ run tp @s ~ ~-1.2 ~
execute as @s[tag=ragdoll_right_leg_visual_prepare] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_center,distance=..20] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_center,sort=nearest,limit=1] correction positioned ~ ~-0.1 ~ run tp @s ~ ~0.3 ~ facing entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg,sort=nearest,limit=1]
##execute as @s[tag=ragdoll_right_leg_visual_prepare] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_center,sort=nearest,limit=1] if block ~ ~-1 ~ #deathanimations:not_solid at @s run tp @s ~ ~ ~ ~30 -10

execute as @s[tag=ragdoll_left_leg_visual] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_center,distance=..20] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_center,sort=nearest,limit=1] correction positioned ~ ~-0.1 ~ run tp @s ~ ~-1.2 ~
execute as @s[tag=ragdoll_left_leg_visual_prepare] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_center,distance=..20] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_center,sort=nearest,limit=1] correction positioned ~ ~-0.1 ~ run tp @s ~ ~0.3 ~ facing entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg,sort=nearest,limit=1]
##execute as @s[tag=ragdoll_left_leg_visual_prepare] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_center,sort=nearest,limit=1] if block ~ ~-1 ~ #deathanimations:not_solid at @s run tp @s ~ ~ ~ ~30 -10


## Rotation
execute as @s[tag=ragdoll_torso_visual] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual_prepare,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_torso_visual] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual_prepare,sort=nearest,limit=1] Rotation[0] 1
#execute as @s[tag=ragdoll_torso_visual] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual_prepare,sort=nearest,limit=1] Rotation[1] 1

execute as @s[tag=ragdoll_head_visual] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_visual_prepare,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_head_visual] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_visual_prepare,sort=nearest,limit=1] Rotation[0] 1
#execute as @s[tag=ragdoll_head_visual] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_visual_prepare,sort=nearest,limit=1] Rotation[1] 1

execute as @s[tag=ragdoll_right_arm_visual] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_visual_prepare,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_right_arm_visual] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_visual_prepare,sort=nearest,limit=1] Rotation[0] 1
#execute as @s[tag=ragdoll_right_arm_visual] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_visual_prepare,sort=nearest,limit=1] Rotation[1] 1

execute as @s[tag=ragdoll_left_arm_visual] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_visual_prepare,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_left_arm_visual] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_visual_prepare,sort=nearest,limit=1] Rotation[0] 1
#execute as @s[tag=ragdoll_left_arm_visual] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_visual_prepare,sort=nearest,limit=1] Rotation[1] 1

execute as @s[tag=ragdoll_right_leg_visual] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_visual_prepare,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_right_leg_visual] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_visual_prepare,sort=nearest,limit=1] Rotation[0] 1
#execute as @s[tag=ragdoll_right_leg_visual] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_visual_prepare,sort=nearest,limit=1] Rotation[1] 1

execute as @s[tag=ragdoll_left_leg_visual] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_visual_prepare,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_left_leg_visual] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_visual_prepare,sort=nearest,limit=1] Rotation[0] 1
#execute as @s[tag=ragdoll_left_leg_visual] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_visual_prepare,sort=nearest,limit=1] Rotation[1] 1



execute as @s[tag=ragdoll_head_center] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_head_center] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] Rotation[1] 1
#execute as @s[tag=ragdoll_head_center] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] Rotation[0] 1
execute as @s[tag=ragdoll_head_center] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,sort=nearest,limit=1] correction run tp @s ~ ~ ~
execute as @s[tag=ragdoll_head_center] at @s run tp @s ^ ^ ^0.7


execute as @s[tag=ragdoll_right_arm_center] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_right_arm_center] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] Rotation[1] 1
#execute as @s[tag=ragdoll_right_arm_center] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] Rotation[0] 1
execute as @s[tag=ragdoll_right_arm_center] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,sort=nearest,limit=1] correction run tp @s ~ ~ ~
execute as @s[tag=ragdoll_right_arm_center] at @s run tp @s ^0.4 ^ ^0.7


execute as @s[tag=ragdoll_left_arm_center] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_left_arm_center] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] Rotation[1] 1
#execute as @s[tag=ragdoll_left_arm_center] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] Rotation[0] 1
execute as @s[tag=ragdoll_left_arm_center] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,sort=nearest,limit=1] correction run tp @s ~ ~ ~
execute as @s[tag=ragdoll_left_arm_center] at @s run tp @s ^-0.4 ^ ^0.7


execute as @s[tag=ragdoll_right_leg_center] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_right_leg_center] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] Rotation[1] 1
#execute as @s[tag=ragdoll_right_leg_center] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] Rotation[0] 1
execute as @s[tag=ragdoll_right_leg_center] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,sort=nearest,limit=1] correction run tp @s ~ ~ ~
execute as @s[tag=ragdoll_right_leg_center] at @s run tp @s ^0.1 ^ ^-0.1


execute as @s[tag=ragdoll_left_leg_center] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_left_leg_center] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] Rotation[1] 1
#execute as @s[tag=ragdoll_left_leg_center] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_torso_visual,sort=nearest,limit=1] Rotation[0] 1
execute as @s[tag=ragdoll_left_leg_center] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_center,sort=nearest,limit=1] correction run tp @s ~ ~ ~
execute as @s[tag=ragdoll_left_leg_center] at @s run tp @s ^-0.1 ^ ^-0.1



execute as @s[tag=ragdoll_head_part] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_visual,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_head_part] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_visual,sort=nearest,limit=1] Rotation[1] 1
#execute as @s[tag=ragdoll_head_part] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_visual,sort=nearest,limit=1] Rotation[0] 1
execute as @s[tag=ragdoll_head_part] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_center] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_head_center,sort=nearest,limit=1] correction run tp @s ~ ~ ~
execute as @s[tag=ragdoll_head_part] at @s run tp @s ^ ^ ^0.4


execute as @s[tag=ragdoll_right_arm_part] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_visual,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_right_arm_part] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_visual,sort=nearest,limit=1] Rotation[1] 1
#execute as @s[tag=ragdoll_right_arm_part] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_visual,sort=nearest,limit=1] Rotation[0] 1
execute as @s[tag=ragdoll_right_arm_part] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_center] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_arm_center,sort=nearest,limit=1] correction run tp @s ~ ~ ~
execute as @s[tag=ragdoll_right_arm_part] at @s run tp @s ^ ^ ^0.4


execute as @s[tag=ragdoll_left_arm_part] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_visual,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_left_arm_part] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_visual,sort=nearest,limit=1] Rotation[1] 1
#execute as @s[tag=ragdoll_left_arm_part] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_visual,sort=nearest,limit=1] Rotation[0] 1
execute as @s[tag=ragdoll_left_arm_part] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_center] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_arm_center,sort=nearest,limit=1] correction run tp @s ~ ~ ~
execute as @s[tag=ragdoll_left_arm_part] at @s run tp @s ^ ^ ^0.4


execute as @s[tag=ragdoll_right_leg_part] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_visual,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_right_leg_part] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_visual,sort=nearest,limit=1] Rotation[1] 1
#execute as @s[tag=ragdoll_right_leg_part] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_visual,sort=nearest,limit=1] Rotation[0] 1
execute as @s[tag=ragdoll_right_leg_part] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_center] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_right_leg_center,sort=nearest,limit=1] correction run tp @s ~ ~ ~
execute as @s[tag=ragdoll_right_leg_part] at @s run tp @s ^ ^ ^0.4


execute as @s[tag=ragdoll_left_leg_part] at @s rotated as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_visual,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=ragdoll_left_leg_part] at @s store result entity @s Rotation[1] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_visual,sort=nearest,limit=1] Rotation[1] 1
#execute as @s[tag=ragdoll_left_leg_part] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_visual,sort=nearest,limit=1] Rotation[0] 1
execute as @s[tag=ragdoll_left_leg_part] at @s at @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_center] if score @s correction = @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_left_leg_center,sort=nearest,limit=1] correction run tp @s ~ ~ ~
execute as @s[tag=ragdoll_left_leg_part] at @s run tp @s ^ ^ ^0.4
