## by Tschipcraft

execute if entity @s[tag=OnGround] run tag @s add low_p_mode
execute if entity @s[tag=OnGround] run scoreboard players reset @s correction
execute if entity @s[tag=OnGround] run scoreboard players reset @s age
execute if entity @s[tag=OnGround] run tag @s remove visual

#say activate
#scoreboard players set @s timeout_parts 0
