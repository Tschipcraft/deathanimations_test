## by Tschipcraft

scoreboard players add @e[tag=lame_death] death_rotation 0

execute as @e[tag=lame_death_check] at @s run tp @s @r

execute as @a[gamemode=!spectator] at @s as @e[tag=lame_death,sort=random,limit=1,distance=..20,scores={cooldown=..1}] run summon armor_stand ~ ~ ~ {Silent:1,Invisible:1b,Marker:1b,Small:1b,NoBasePlate:1b,Tags:[lame_death_check]}
execute as @e[tag=lame_death_check] at @s run tp @s @e[tag=lame_death,sort=nearest,limit=1,scores={cooldown=..3}]
execute as @e[tag=lame_death_check] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,limit=1,type=!armor_stand,type=!salmon,type=!dolphin,type=!tropical_fish,type=!phantom,type=!experience_orb,type=!zombie,type=!husk,type=!drowned,type=!skeleton,type=!wither_skeleton,type=!item,distance=..10]
execute as @e[tag=lame_death_check] at @s if entity @e[tag=lame_death] run tp @s ^ ^ ^0.5

execute as @e[tag=lame_death_check] at @s positioned ^ ^ ^-0.5 as @e[tag=lame_death,limit=1,sort=nearest] at @s positioned ^ ^ ^0.5 if entity @e[tag=lame_death_check,distance=..0.5] run scoreboard players set @s death_rotation 0
execute as @e[tag=lame_death_check] at @s positioned ^ ^ ^-0.5 as @e[tag=lame_death,limit=1,sort=nearest] at @s positioned ^ ^ ^-0.5 if entity @e[tag=lame_death_check,distance=..0.5] run scoreboard players set @s death_rotation 1
execute as @e[tag=lame_death_check] at @s positioned ^ ^ ^-0.5 as @e[tag=lame_death,limit=1,sort=nearest] at @s positioned ^0.5 ^ ^ if entity @e[tag=lame_death_check,distance=..0.5] run scoreboard players set @s death_rotation 2
execute as @e[tag=lame_death_check] at @s positioned ^ ^ ^-0.5 as @e[tag=lame_death,limit=1,sort=nearest] at @s positioned ^-0.5 ^ ^ if entity @e[tag=lame_death_check,distance=..0.5] run scoreboard players set @s death_rotation 3

kill @e[tag=lame_death_check]
