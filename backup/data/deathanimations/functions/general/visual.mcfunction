execute as @e[type=#deathanimations:marker_entities,tag=visual,tag=arm] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=arm,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,tag=torso] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=bodypart,tag=torso,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,tag=leg] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=leg,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,tag=head] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=head,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,tag=item] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=item,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.3 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,tag=item,tag=bow] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=item,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,tag=fish] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=fish,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~ ~ ~ ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,tag=chestplate] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=bodypart,tag=chestplate,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~


execute as @e[type=#deathanimations:marker_entities,tag=visual] at @s unless entity @e[type=#deathanimations:marker_entities,tag=bodypart,distance=..10] run kill @s

##execute as @e[tag=visual,limit=1,sort=random] at @s if entity @e[tag=visual,distance=0.00001..0.1] run kill @s


## Visuals

scoreboard players add @e[type=#deathanimations:marker_entities,tag=visual] rotation 0

execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=0},sort=random,limit=1] run scoreboard players set @s rotation 40
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=0},sort=random,limit=1] run scoreboard players set @s rotation -40
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=0},sort=random,limit=1] run scoreboard players set @s rotation 90
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=0},sort=random,limit=1] run scoreboard players set @s rotation -90

execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=-90}] at @s if block ~ ~1.1 ~ #deathanimations:s_rotate run tp @s ~ ~ ~ ~-25 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=90}] at @s if block ~ ~1.1 ~ #deathanimations:s_rotate run tp @s ~ ~ ~ ~25 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=-40}] at @s if block ~ ~1.1 ~ #deathanimations:s_rotate run tp @s ~ ~ ~ ~-10 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=40}] at @s if block ~ ~1.1 ~ #deathanimations:s_rotate run tp @s ~ ~ ~ ~10 ~

execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=-90}] at @s if block ~ ~0.9 ~ water run tp @s ~ ~ ~ ~10 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=90}] at @s if block ~ ~0.9 ~ water run tp @s ~ ~ ~ ~-10 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=-40}] at @s if block ~ ~0.9 ~ water run tp @s ~ ~ ~ ~5 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=40}] at @s if block ~ ~0.9 ~ water run tp @s ~ ~ ~ ~-5 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=-90}] at @s if block ~ ~1.3 ~ cobweb run tp @s ~ ~ ~ ~24 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=90}] at @s if block ~ ~1.3 ~ cobweb run tp @s ~ ~ ~ ~-24 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=-40}] at @s if block ~ ~1.3 ~ cobweb run tp @s ~ ~ ~ ~8 ~
execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={rotation=40}] at @s if block ~ ~1.3 ~ cobweb run tp @s ~ ~ ~ ~-8 ~


## Particle

execute as @a at @s as @e[type=#deathanimations:marker_entities,tag=visual,distance=..23,scores={age=0..140}] at @s run function deathanimations:general/particle
