##by Tschipcraft

execute if score Global paper_fix matches 0 unless entity @s[type=zombie] run data merge entity @s {Silent:0b}

execute at @s if score Global enable_pickup matches 0 as @e[type=#deathanimations:marker_entities,distance=..5,tag=visual,sort=nearest,limit=3] run data merge entity @s {DisabledSlots:4144959}
