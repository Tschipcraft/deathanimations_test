## by Tschipcraft


#execute as @s[tag=arm] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=arm,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
#execute as @s[tag=torso] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=bodypart,tag=torso,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
#execute as @s[tag=leg] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=leg,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
#execute as @s[tag=head] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=head,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
#execute as @s[tag=item] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=item,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.3 ~
#execute as @s[tag=item,tag=bow] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=item,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
#execute as @s[tag=fish] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=fish,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=chestplate] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=bodypart,tag=chestplate,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~

scoreboard players set @s b_test 0
execute at @e[type=#deathanimations:marker_entities,tag=bodypart,sort=random,distance=..10,tag=!lame_bodypart] if score @s correction = @e[type=#deathanimations:marker_entities,tag=bodypart,sort=nearest,limit=1] correction run function deathanimations:visual_correction/found

execute as @s[scores={b_test=0}] at @e[type=#deathanimations:marker_entities,tag=bodypart,sort=random,distance=..20,tag=!lame_bodypart] if score @s correction = @e[type=#deathanimations:marker_entities,tag=bodypart,sort=nearest,limit=1] correction run function deathanimations:visual_correction/found
execute as @s[scores={b_test=0}] at @e[type=#deathanimations:marker_entities,tag=bodypart,sort=random,distance=..50,tag=!lame_bodypart] if score @s correction = @e[type=#deathanimations:marker_entities,tag=bodypart,sort=nearest,limit=1] correction run function deathanimations:visual_correction/found

#execute if score Global part_lifetime matches 1.. as @s[scores={b_test=0}] at @s run function deathanimations:animation/evaporate
execute as @s[scores={b_test=0}] at @s run function deathanimations:low_p_mode/activate
execute as @s[scores={b_test=0}] at @s run function deathanimations:low_p_mode/deactivate

execute unless score Global part_lifetime matches 0 as @s[scores={timeout_parts=500..}] at @s run function deathanimations:low_p_mode/activate

#kill @s[scores={b_test=0}]
#execute as @s at @s unless entity @e[type=#deathanimations:marker_entities,tag=bodypart,distance=..10] run kill @s

##execute as @e[tag=visual,limit=1,sort=random] at @s if entity @e[tag=visual,distance=0.00001..0.1] run kill @s


## Visuals

#execute as @s[scores={rotation=-90}] at @s if block ~ ~1.1 ~ #deathanimations:s_rotate run tp @s ~ ~ ~ ~-25 ~
#execute as @s[scores={rotation=90}] at @s if block ~ ~1.1 ~ #deathanimations:s_rotate run tp @s ~ ~ ~ ~25 ~
#execute as @s[scores={rotation=-40}] at @s if block ~ ~1.1 ~ #deathanimations:s_rotate run tp @s ~ ~ ~ ~-10 ~
#execute as @s[scores={rotation=40}] at @s if block ~ ~1.1 ~ #deathanimations:s_rotate run tp @s ~ ~ ~ ~10 ~

#execute as @s[scores={rotation=-90}] at @s if block ~ ~0.9 ~ water run tp @s ~ ~ ~ ~10 ~
#execute as @s[scores={rotation=90}] at @s if block ~ ~0.9 ~ water run tp @s ~ ~ ~ ~-10 ~
#execute as @s[scores={rotation=-40}] at @s if block ~ ~0.9 ~ water run tp @s ~ ~ ~ ~5 ~
#execute as @s[scores={rotation=40}] at @s if block ~ ~0.9 ~ water run tp @s ~ ~ ~ ~-5 ~
#execute as @s[scores={rotation=-90}] at @s if block ~ ~1.3 ~ cobweb run tp @s ~ ~ ~ ~24 ~
#execute as @s[scores={rotation=90}] at @s if block ~ ~1.3 ~ cobweb run tp @s ~ ~ ~ ~-24 ~
#execute as @s[scores={rotation=-40}] at @s if block ~ ~1.3 ~ cobweb run tp @s ~ ~ ~ ~8 ~
#execute as @s[scores={rotation=40}] at @s if block ~ ~1.3 ~ cobweb run tp @s ~ ~ ~ ~-8 ~


## rotation
execute as @s[tag=!OnGround] at @s unless block ~ ~1.4 ~ water unless block ~ ~1.4 ~ cobweb run tp @s ~ ~ ~ ~-25 ~
execute as @s[tag=!OnGround] at @s if block ~ ~1.4 ~ water run tp @s ~ ~ ~ ~5 ~
execute as @s[tag=!OnGround] at @s if block ~ ~1.4 ~ cobweb run tp @s ~ ~ ~ ~1 ~



scoreboard players set @s[scores={rotation=181..}] rotation -180
execute as @s[tag=!OnGround] at @s unless block ~ ~1.4 ~ water unless block ~ ~1.4 ~ cobweb run scoreboard players add @s rotation 25
execute as @s[tag=!OnGround] at @s if block ~ ~1.4 ~ water run scoreboard players add @s rotation 5
execute as @s[tag=!OnGround] at @s if block ~ ~1.4 ~ cobweb run scoreboard players add @s rotation 1

execute if score global entity_count matches ..50 as @s[tag=!OnGround] run function deathanimations:general/rotation/update


## Particles

execute as @s[scores={age=0..140}] at @s run function deathanimations:general/particle
