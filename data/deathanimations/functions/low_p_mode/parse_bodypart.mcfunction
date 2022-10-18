##by Tschipcraft

#scoreboard players set @s correction 0
tag @s remove low_p_revive
scoreboard players add @s age 2
scoreboard players operation @s timeout_parts = @e[type=minecraft:armor_stand,tag=this,limit=1] timeout_parts
data modify entity @s CustomName set from entity @e[type=minecraft:armor_stand,tag=this,limit=1] CustomName
execute if score Global paper_fix matches 0 run data merge entity @s {Silent:0b}
