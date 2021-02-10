## by Tschipcraft

## Visuals
execute as @s[type=#deathanimations:marker_entities,tag=visual] at @s run function deathanimations:general/visual


## Rotation
execute as @s[type=#deathanimations:marker_entities,tag=bodypart] at @s run function deathanimations:general/bodypart


## for calculations
scoreboard players set @s[type=#deathanimations:marker_entities,tag=bodypart] staticy 2


## Timeout

execute if score Global part_lifetime matches ..2 run execute as @s[type=#deathanimations:marker_entities,tag=bodypart,tag=OnGround] run scoreboard players add @s timeout_parts 1
execute if score Global part_lifetime matches ..2 run execute as @s[type=#deathanimations:marker_entities,tag=visual,tag=OnGround] run scoreboard players add @s timeout_parts 1
execute if score Global part_lifetime matches 0 run execute as @s[type=#deathanimations:marker_entities,tag=bodypart,tag=OnGround] run scoreboard players add @s timeout_parts 2
execute if score Global part_lifetime matches 0 run execute as @s[type=#deathanimations:marker_entities,tag=visual,tag=OnGround] run scoreboard players add @s timeout_parts 2

#execute if score Global part_lifetime matches 3 run execute as @s[type=#deathanimations:marker_entities,tag=visual,tag=OnGround] run scoreboard players set @s timeout_parts 1
#execute if score Global part_lifetime matches 3 run execute as @s[type=#deathanimations:marker_entities,tag=visual,tag=!OnGround] run scoreboard players set @s timeout_parts 0

scoreboard players add @s[type=#deathanimations:marker_entities,tag=bodypart] age 1
scoreboard players add @s[type=#deathanimations:marker_entities,tag=visual] age 1

scoreboard players set @s[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=500..},tag=!OnGround] timeout_parts 400
scoreboard players set @s[type=#deathanimations:marker_entities,tag=visual,scores={timeout_parts=500..},tag=!OnGround] timeout_parts 400

execute if score Global part_lifetime matches 0 run execute as @s[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=..500}] at @s unless block ~ ~-0.1 ~ #deathanimations:nonsolid run scoreboard players set @s timeout_parts 500
execute if score Global part_lifetime matches 0 run execute as @s[type=#deathanimations:marker_entities,tag=visual,scores={timeout_parts=..500}] at @s unless block ~ ~-0.1 ~ #deathanimations:nonsolid run scoreboard players set @s timeout_parts 500

## Clear picked up body parts
#execute as @s[type=#deathanimations:marker_entities,tag=bodypart,scores={age=210..},tag=!item,tag=!lame_death,tag=!fish,tag=!iron_golem,tag=!ravager] at @s positioned ~ ~-1.4 ~ unless entity @e[tag=visual,sort=nearest,limit=1,nbt={ArmorItems:[{},{},{},{Count:1b}]},distance=..0.1] unless entity @e[type=#deathanimations:marker_entities,tag=lame_death,distance=..3] run kill @s
execute as @s[type=#deathanimations:marker_entities,tag=visual,tag=!item,tag=!fish] at @s unless entity @s[nbt={ArmorItems:[{},{},{},{Count:1b}]}] run kill @s



#scoreboard players add @s[type=#deathanimations:marker_entities,tag=visual] rotation 0

#execute as @s[type=#deathanimations:marker_entities,tag=visual,scores={rotation=0},sort=random,limit=1] run scoreboard players set @s rotation 40
#execute as @s[type=#deathanimations:marker_entities,tag=visual,scores={rotation=0},sort=random,limit=1] run scoreboard players set @s rotation -40
#execute as @s[type=#deathanimations:marker_entities,tag=visual,scores={rotation=0},sort=random,limit=1] run scoreboard players set @s rotation 90
#execute as @s[type=#deathanimations:marker_entities,tag=visual,scores={rotation=0},sort=random,limit=1] run scoreboard players set @s rotation -90


## correction
#execute as @s[type=#deathanimations:marker_entities,tag=visual,scores={age=..50}] run function deathanimations:correction
#execute as @s[type=#deathanimations:marker_entities,tag=visual,scores={age=200..210}] run function deathanimations:correction

execute if score Global part_lifetime matches 1.. run execute as @s[type=#deathanimations:marker_entities,tag=bodypart,scores={age=..70}] at @s unless block ~ ~ ~ #deathanimations:not_solid if block ~ ~1 ~ #deathanimations:not_solid run tp @s ~ ~1 ~
