## by Tschipcraft

execute as @s[tag=!arm,tag=!head] if score @s rotation matches -180..0 run scoreboard players set @s rotation -90
execute as @s[tag=!arm,tag=!head] if score @s rotation matches 0..180 run scoreboard players set @s rotation 90
execute as @s[tag=big_torso] if score @s rotation matches -90..90 run scoreboard players set @s rotation 0
execute as @s[tag=big_torso] if score @s rotation matches 90..180 run scoreboard players set @s rotation 180
execute as @s[tag=big_torso] if score @s rotation matches -180..-90 run scoreboard players set @s rotation 180

execute as @s[tag=chestplate] if score @s rotation matches -180..0 run scoreboard players set @s rotation -90
execute as @s[tag=chestplate] if score @s rotation matches 0..180 run scoreboard players set @s rotation 90

execute as @s[tag=arm] if score @s rotation matches -70..70 run scoreboard players set @s rotation 1
execute as @s[tag=arm] if score @s rotation matches 110..180 run scoreboard players set @s rotation 180
execute as @s[tag=arm] if score @s rotation matches -180..-110 run scoreboard players set @s rotation 180
execute as @s[tag=arm] if score @s rotation matches -110..-70 run scoreboard players set @s rotation 90
execute as @s[tag=arm] if score @s rotation matches 70..110 run scoreboard players set @s rotation -90

execute as @s[tag=head] if score @s rotation matches -45..45 run scoreboard players set @s rotation 1
execute as @s[tag=head] if score @s rotation matches 45..135 run scoreboard players set @s rotation 90
execute as @s[tag=head] if score @s rotation matches 135..220 run scoreboard players set @s rotation 180
execute as @s[tag=head] if score @s rotation matches -180..-135 run scoreboard players set @s rotation 180
execute as @s[tag=head] if score @s rotation matches -135..-45 run scoreboard players set @s rotation -90
execute as @s[tag=armor,tag=head] if score @s rotation matches -45..45 run scoreboard players set @s rotation 180

execute as @s[tag=item] run scoreboard players set @s rotation 1
execute as @s[tag=bow] run scoreboard players set @s rotation 1
