## by Tschipcraft

execute as @e[tag=bodypart,tag=torso,tag=OnGround,scores={timeout_parts=40..}] at @s run function deathanimations:spawn_loot
execute as @e[tag=low_p_mode,tag=torso,scores={timeout_parts=40..}] at @s run function deathanimations:spawn_loot
kill @e[tag=low_p_mode,scores={timeout_parts=40..}]
kill @e[tag=bodypart,tag=OnGround,scores={timeout_parts=40..}]
kill @e[tag=visual,tag=OnGround,scores={timeout_parts=40..}]

kill @e[tag=ragdoll]
##execute as @e[tag=visual,scores={timeout_parts=40..}] run data merge entity @s {Tags:[low_p_bodypart]}

kill @e[tag=soul]
kill @e[tag=soul_torso]
kill @e[tag=soul_tail]
kill @e[tag=soul_head]

kill @e[tag=animal_death,scores={cooldown=40..}]
kill @e[tag=villager_like_death,scores={cooldown=40..}]
