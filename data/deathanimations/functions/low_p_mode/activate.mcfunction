##by Tschipcraft
# Freezes a visual entity

# Set tags and scores
tag @s add low_p_mode
scoreboard players reset @s da_sid
scoreboard players reset @s age
tag @s remove visual
tag @s remove da_low_p_activate
data merge entity @s {Marker:1b}

#say activate
#scoreboard players set @s timeout_parts 0
