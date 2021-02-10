## by Tschipcraft

## Motion

# Nur entity einfügen
execute as @s[scores={age=1}] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,limit=1,type=!armor_stand,type=!area_effect_cloud,type=!salmon,type=!dolphin,type=!tropical_fish,type=!phantom,type=!experience_orb,type=!zombie,type=!husk,type=!drowned,type=!skeleton,type=!stray,type=!wither_skeleton,type=!villager,type=!cow,type=!sheep,type=!pig,type=!chicken,type=!item,distance=..10]
execute as @s[scores={age=1}] at @s if entity @e[tag=arrow,distance=..9] run tp @s ~ ~ ~ facing entity @e[tag=arrow,limit=1,sort=furthest,distance=..9]
execute as @s[scores={age=1}] at @s if entity @e[tag=explosion,distance=..9] run tp @s ~ ~ ~ facing entity @e[tag=explosion,limit=1,sort=nearest,distance=..9]
execute as @s[scores={age=1}] at @s if entity @e[tag=explosion,distance=..9] run tag @s add exploded
execute as @s[scores={age=1}] at @s if entity @e[tag=arrow,distance=..9] run tag @s add arrowed
execute as @s[scores={age=1}] at @s if entity @s[tag=!iron_golem,tag=!ravager] run function deathanimations:tick



## rotation
execute as @s[tag=!OnGround,tag=!OnGround_s] at @s unless block ~ ~-0.1 ~ water unless block ~ ~0.3 ~ cobweb run scoreboard players add @s rotation 25
execute as @s[tag=!OnGround,tag=!OnGround_s] at @s if block ~ ~-0.1 ~ water run scoreboard players add @s rotation 5
execute as @s[tag=!OnGround] at @s if block ~ ~0.3 ~ cobweb run scoreboard players add @s rotation 1

execute if score global entity_count matches ..50 as @s[tag=!OnGround,scores={age=2..}] run function deathanimations:general/rotation/update


## OnGround?
execute as @s[tag=OnGround_s,nbt={OnGround:1b}] run tag @s remove OnGround_s
execute as @s[tag=OnGround_next,nbt={OnGround:1b}] run tag @s remove OnGround_next
execute as @s[tag=!OnGround,nbt={OnGround:1b}] run tag @s add OnGround_next
execute as @s[tag=!OnGround,nbt={OnGround:1b}] run tag @s add OnGround
execute as @s[tag=OnGround,nbt={OnGround:0b}] run tag @s remove OnGround
##execute as @s[tag=OnGround] unless entity @s[nbt={OnGround:1b}] run tag @s remove OnGround
execute as @s[tag=OnGround_next,tag=!arm,tag=!head] if score @s rotation matches -180..0 run scoreboard players set @s rotation -90
execute as @s[tag=OnGround_next,tag=!arm,tag=!head] if score @s rotation matches 0..180 run scoreboard players set @s rotation 90
execute as @s[tag=OnGround_next,tag=big_torso] if score @s rotation matches -90..90 run scoreboard players set @s rotation 0
execute as @s[tag=OnGround_next,tag=big_torso] if score @s rotation matches 90..180 run scoreboard players set @s rotation 180
execute as @s[tag=OnGround_next,tag=big_torso] if score @s rotation matches -180..-90 run scoreboard players set @s rotation 180
#execute as @s[tag=OnGround_next,tag=cave_spiderbody,tag=torso] if score @s rotation matches -90..90 run scoreboard players set @s rotation 0
#execute as @s[tag=OnGround_next,tag=cave_spiderbody,tag=torso] if score @s rotation matches 90..180 run scoreboard players set @s rotation 180
#execute as @s[tag=OnGround_next,tag=cave_spiderbody,tag=torso] if score @s rotation matches -180..-90 run scoreboard players set @s rotation 180

execute as @s[tag=OnGround_next,tag=chestplate] if score @s rotation matches -180..0 run scoreboard players set @s rotation -90
execute as @s[tag=OnGround_next,tag=chestplate] if score @s rotation matches 0..180 run scoreboard players set @s rotation 90

execute as @s[tag=OnGround_next,tag=arm] if score @s rotation matches -70..70 run scoreboard players set @s rotation 1
execute as @s[tag=OnGround_next,tag=arm] if score @s rotation matches 110..180 run scoreboard players set @s rotation 180
execute as @s[tag=OnGround_next,tag=arm] if score @s rotation matches -180..-110 run scoreboard players set @s rotation 180
execute as @s[tag=OnGround_next,tag=arm] if score @s rotation matches -110..-70 run scoreboard players set @s rotation 90
execute as @s[tag=OnGround_next,tag=arm] if score @s rotation matches 70..110 run scoreboard players set @s rotation -90

execute as @s[tag=OnGround_next,tag=head] if score @s rotation matches -45..45 run scoreboard players set @s rotation 1
execute as @s[tag=OnGround_next,tag=head] if score @s rotation matches 45..135 run scoreboard players set @s rotation 90
execute as @s[tag=OnGround_next,tag=head] if score @s rotation matches 135..220 run scoreboard players set @s rotation 180
execute as @s[tag=OnGround_next,tag=head] if score @s rotation matches -180..-135 run scoreboard players set @s rotation 180
execute as @s[tag=OnGround_next,tag=head] if score @s rotation matches -135..-45 run scoreboard players set @s rotation -90
execute as @s[tag=OnGround_next,tag=armor,tag=head] if score @s rotation matches -45..45 run scoreboard players set @s rotation 180

execute as @s[tag=OnGround_next,tag=item] run scoreboard players set @s rotation 1
execute as @s[tag=OnGround_next,tag=bow] run scoreboard players set @s rotation 10

execute as @s[tag=OnGround_next,scores={age=2..}] run function deathanimations:general/rotation/update

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
