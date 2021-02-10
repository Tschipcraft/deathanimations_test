
## Visuals
execute if entity @e[type=#deathanimations:marker_entities,tag=visual] run function deathanimations:general/visual


##**
execute if entity @e[type=#deathanimations:marker_entities,tag=lame_death,scores={cooldown=..1}] run function deathanimations:lame_death

## Rotation
scoreboard players set @e[type=#deathanimations:marker_entities,tag=bodypart,scores={rotation=181..}] rotation -180

execute as @e[type=#deathanimations:marker_entities,tag=bodypart] at @s run function deathanimations:general/bodypart


## for calculations
scoreboard players set @e[type=#deathanimations:marker_entities,tag=bodypart] staticy 2




## Timeout

execute if score Global part_lifetime matches ..2 run execute as @e[type=#deathanimations:marker_entities,tag=bodypart] at @s unless block ~ ~-0.1 ~ #deathanimations:nonsolid run scoreboard players add @s timeout_parts 1
execute if score Global part_lifetime matches ..2 run execute as @e[type=#deathanimations:marker_entities,tag=visual] at @s unless block ~ ~1.3 ~ #deathanimations:nonsolid run scoreboard players add @s timeout_parts 1
execute if score Global part_lifetime matches 0 run execute as @e[type=#deathanimations:marker_entities,tag=bodypart] at @s unless block ~ ~-0.1 ~ #deathanimations:nonsolid run scoreboard players add @s timeout_parts 2
execute if score Global part_lifetime matches 0 run execute as @e[type=#deathanimations:marker_entities,tag=visual] at @s unless block ~ ~1.3 ~ #deathanimations:nonsolid run scoreboard players add @s timeout_parts 2

execute if score Global part_lifetime matches 3 run execute as @e[type=#deathanimations:marker_entities,tag=visual] at @s unless block ~ ~1.3 ~ #deathanimations:nonsolid run scoreboard players set @s timeout_parts 1
execute if score Global part_lifetime matches 3 run execute as @e[type=#deathanimations:marker_entities,tag=visual] at @s if block ~ ~1.3 ~ #deathanimations:nonsolid run scoreboard players set @s timeout_parts 0

scoreboard players add @e[type=#deathanimations:marker_entities,tag=bodypart] age 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=visual] age 1

scoreboard players set @e[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=500..},tag=!OnGround] timeout_parts 400

execute if score Global part_lifetime matches 0 run execute as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=..500}] at @s unless block ~ ~-0.1 ~ #deathanimations:nonsolid run scoreboard players set @s timeout_parts 500
execute if score Global part_lifetime matches 0 run execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={timeout_parts=..500}] at @s unless block ~ ~-0.1 ~ #deathanimations:nonsolid run scoreboard players set @s timeout_parts 500

## xperimental

execute as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={age=50..},tag=!item,tag=!lame_death,tag=!fish,tag=!iron_golem,tag=!ravager] at @s positioned ~ ~-1.4 ~ unless entity @e[tag=visual,sort=nearest,limit=1,nbt={ArmorItems:[{},{},{},{Count:1b}]},distance=..0.1] unless entity @e[tag=lame_death,distance=..3] run kill @s
execute as @e[type=#deathanimations:marker_entities,tag=visual,tag=!item,tag=!fish] at @s unless entity @s[nbt={ArmorItems:[{},{},{},{Count:1b}]}] run kill @s


## correction
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={age=..50}] run function deathanimations:correction

execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={age=200..210}] run function deathanimations:correction

execute if score Global part_lifetime matches 1.. run execute as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={age=..70}] at @s unless block ~ ~ ~ #deathanimations:not_solid if block ~ ~1 ~ #deathanimations:not_solid run tp @s ~ ~1 ~
