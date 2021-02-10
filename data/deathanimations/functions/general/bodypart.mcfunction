## by Tschipcraft

## Motion

# Nur entity einfügen
execute as @s[scores={age=1}] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,limit=1,type=!armor_stand,type=!area_effect_cloud,type=!salmon,type=!dolphin,type=!tropical_fish,type=!phantom,type=!experience_orb,type=!zombie,type=!husk,type=!drowned,type=!skeleton,type=!stray,type=!wither_skeleton,type=!villager,type=!cow,type=!sheep,type=!pig,type=!chicken,type=!item,distance=..10]
execute as @s[scores={age=1}] at @s if entity @e[tag=arrow,distance=..9] run tp @s ~ ~ ~ facing entity @e[tag=arrow,limit=1,sort=furthest,distance=..9]
execute as @s[scores={age=1}] at @s if entity @e[tag=explosion,distance=..9] run tp @s ~ ~ ~ facing entity @e[tag=explosion,limit=1,sort=nearest,distance=..9]
execute as @s[scores={age=1}] at @s if entity @e[tag=explosion,distance=..9] run tag @s add exploded
execute as @s[scores={age=1}] at @s if entity @e[tag=arrow,distance=..9] run tag @s add arrowed
execute as @s[scores={age=1}] at @s if entity @s[tag=!iron_golem,tag=!ravager] run function deathanimations:tick


## OnGround?
execute as @s[tag=!OnGround,nbt={OnGround:1b}] run function deathanimations:general/onground/true
execute as @s[tag=OnGround,nbt={OnGround:0b}] run function deathanimations:general/onground/false


## lava kill
execute if block ~ ~ ~ lava run function deathanimations:animation/lava_kill

## collision
execute as @s[tag=!iron_golem,tag=!ravager] at @s if entity @e[type=!tropical_fish,type=!cod,type=!dolphin,type=!salmon,type=!armor_stand,type=!item,distance=..0.5] run function deathanimations:ragdoll_push
execute as @s[tag=!iron_golem,tag=!ravager] at @s if entity @e[type=#deathanimations:marker_entities,tag=bodypart,distance=0.00001..0.2] run function deathanimations:bodypart_push


## bounce off blocks
execute if block ~ ~-0.1 ~ #deathanimations:nonsolid unless block ~0.2 ~-0.1 ~ #deathanimations:noncubic run data merge entity @s {Motion:[-0.2,0.1,0.0]}
execute if block ~ ~-0.1 ~ #deathanimations:nonsolid unless block ~-0.2 ~-0.1 ~ #deathanimations:noncubic run data merge entity @s {Motion:[0.2,0.1,0.0]}
execute if block ~ ~-0.1 ~ #deathanimations:nonsolid unless block ~ ~-0.1 ~0.2 #deathanimations:noncubic run data merge entity @s {Motion:[0.0,0.1,-0.2]}
execute if block ~ ~-0.1 ~ #deathanimations:nonsolid unless block ~ ~-0.1 ~-0.2 #deathanimations:noncubic run data merge entity @s {Motion:[0.0,0.1,0.2]}
