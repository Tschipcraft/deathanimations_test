## by Tschipcraft

kill @e[type=armor_stand,scores={age=95999..}]

#execute as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={age=35..},tag=OnGround] at @s unless entity @e[type=!armor_stand,type=!area_effect_cloud,type=!item,type=!arrow,distance=..8] run kill @s
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={age=35..},tag=OnGround,tag=!playerbody] at @s unless entity @s[scores={age=145..150}] at @s unless entity @a[distance=..3] run tag @s add da_low_p_activate
#execute as @e[type=#deathanimations:marker_entities,tag=low_p_mode,scores={timeout_parts=..500}] at @s if entity @a[distance=..15] if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!item,type=!arrow,distance=..4] run function deathanimations:low_p_mode/revive
execute as @e[type=#deathanimations:marker_entities,tag=low_p_mode,scores={timeout_parts=..500},limit=30,sort=random] at @s if entity @a[distance=..2] run function deathanimations:low_p_mode/revive

execute as @e[type=#deathanimations:marker_entities,tag=visual,tag=OnGround,sort=arbitrary] run scoreboard players set @s timeout_parts 1
execute as @e[type=#deathanimations:marker_entities,tag=visual,tag=!OnGround,sort=arbitrary] run scoreboard players set @s timeout_parts 0

