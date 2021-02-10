## by Tschipcraft

## correction for calculations

execute as @e[type=#deathanimations:marker_entities,tag=animal_death] at @s run tp @s ~ ~-0.15 ~
# Small
execute as @e[type=#deathanimations:marker_entities,tag=correct,nbt={Small:1b}] at @s run tp @s ~ ~0.73 ~

execute as @e[type=#deathanimations:marker_entities,tag=visual] at @s run function deathanimations:visual_correction/decode



## general stuff

scoreboard players add @e[type=#deathanimations:marker_entities,tag=arrow] age 1


##execute as @e[tag=iron_golem_death,scores={cooldown=51..}] at @s positioned ~ ~ ~ unless block ^ ^ ^1 #deathanimations:nonsolid run tp @s ~ ~-1 ~

execute if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] run function deathanimations:ragdoll_core


execute if entity @e[type=#deathanimations:marker_entities,tag=bodypart] run function deathanimations:general/main
execute unless entity @e[type=#deathanimations:marker_entities,tag=bodypart] if entity @e[type=#deathanimations:marker_entities,tag=visual] run function deathanimations:general/main


## welcome & Menu
# now in /loops


## auto crafting
execute if score Global auto_crafting matches 1 if score Global enable_pickup matches 1 run function deathanimations:auto_crafting/core


## reset data pack
scoreboard players add Global age 1
execute if score Global part_lifetime matches ..2 if score Global age matches 1599.. unless entity @e[tag=bodypart] unless entity @e[tag=endermite] unless entity @e[tag=ragdoll] run function deathanimations:reset
execute if score Global age matches 1599.. run scoreboard players set Global age 1


#scoreboard players add @e[tag=lame_death_check] age 1
#execute unless entity @e[tag=lame_death_check] run summon armor_stand ~ ~ ~ {Silent:1,Invisible:1,Marker:1,Small:1,Tags:[lame_death_check]}

## Fish; Deactivated for now
#hier theoretisch
#execute as @e[tag=fish,scores={age=900..}] at @s run tp @s ~ -2 ~
#kill @e[tag=fish,scores={age=900..}]
#scoreboard players add @e[tag=tropical_fish_death] age 1
#execute as @e[tag=tropical_fish_death,scores={age=5}] at @s store result score @s Variant run data get entity @e[type=tropical_fish,sort=nearest,limit=1] Variant
#
#execute as @e[tag=fish] at @s if block ~ ~ ~ water run data merge entity @s {CustomNameVisible:0b,CustomName:"{\"text\":\"Dinnerbone\"}"}
#execute as @e[tag=fish] at @s unless entity @s[type=dolphin] unless block ~ ~ ~ water run data merge entity @s {CustomNameVisible:0b,CustomName:"{\"text\":\"\"}"}
#effect give @e[tag=fish] resistance 1 255 true
##

## Ragdoll on bow shot
execute as @e[type=#deathanimations:marker_entities,tag=death_detection,tag=!arrowed] at @s if entity @e[tag=arrow,distance=..4] run tag @s add arrowed
execute as @e[type=#deathanimations:marker_entities,tag=death_detection,tag=arrowed] at @s unless entity @e[tag=arrow,distance=..4] run tag @s remove arrowed

execute as @e[type=minecraft:arrow] at @s if entity @e[type=#deathanimations:marker_entities,tag=death_detection,distance=..3,tag=!skeleton_death,tag=!wither_skeleton_death,tag=!spider_death,tag=!cave_spider_death,tag=!stray_death] unless entity @s[nbt={inGround:1b}] run particle minecraft:item minecraft:redstone_block ~ ~ ~ 0 0 0 0.1 10 normal @a[scores={blood_local=1}]
execute as @e[type=minecraft:arrow] at @s if entity @e[type=#deathanimations:marker_entities,tag=death_detection,distance=..3,tag=spider_death] unless entity @s[nbt={inGround:1b}] run particle minecraft:item_slime ~ ~ ~ 0 0 0 0.1 10 normal @a[scores={blood_local=1}]
execute as @e[type=minecraft:arrow] at @s if entity @e[type=#deathanimations:marker_entities,tag=death_detection,distance=..3,tag=cave_spider_death] unless entity @s[nbt={inGround:1b}] run particle minecraft:item_slime ~ ~ ~ 0 0 0 0.1 10 normal @a[scores={blood_local=1}]

## Normal death rotation

scoreboard players add @e[type=#deathanimations:marker_entities,tag=bodypart] cooldown 0

scoreboard players add @e[type=#deathanimations:marker_entities,tag=iron_golem_death] cooldown 0
scoreboard players add @e[type=#deathanimations:marker_entities,tag=iron_golem_death,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=iron_golembody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=ravager_death] cooldown 0
scoreboard players add @e[type=#deathanimations:marker_entities,tag=ravager_death,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=ravagerbody,scores={cooldown=1..}] cooldown 1

execute if entity @e[type=#deathanimations:marker_entities,tag=lame_death] run function deathanimations:animation/lame_death


scoreboard players add @e[type=#deathanimations:marker_entities,tag=animal_death] cooldown 0
scoreboard players add @e[type=#deathanimations:marker_entities,tag=villager_like_death] cooldown 0
scoreboard players add @e[type=#deathanimations:marker_entities,tag=animal_death,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=villager_like_death,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=pigbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=cowbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=sheepbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=chickenbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=villagerbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=vindicatorbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=evokerbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=pillagerbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=endermite] cooldown 1


execute as @e[type=#deathanimations:marker_entities,tag=iron_golem_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=iron_golembody,sort=nearest,limit=1,scores={cooldown=20..}] if score @e[type=#deathanimations:marker_entities,tag=iron_golembody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.1 ~
execute as @e[type=#deathanimations:marker_entities,tag=iron_golem_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=iron_golembody,sort=nearest,limit=1,scores={cooldown=..20}] if score @e[type=#deathanimations:marker_entities,tag=iron_golembody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.0 ~
execute as @e[type=#deathanimations:marker_entities,tag=ravager_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1,scores={cooldown=..30}] if score @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-0.6 ~
##execute as @e[type=#deathanimations:marker_entities,tag=ravager_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=ravagerbody,sort=nearest,limit=1,scores={cooldown=20..30}] if score @e[tag=ravagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-0.8 ~
execute as @e[type=#deathanimations:marker_entities,tag=ravager_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1,scores={cooldown=30..40}] if score @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.0 ~
execute as @e[type=#deathanimations:marker_entities,tag=ravager_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1,scores={cooldown=40..50}] if score @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.3 ~
execute as @e[type=#deathanimations:marker_entities,tag=ravager_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1,scores={cooldown=50..}] if score @e[type=#deathanimations:marker_entities,tag=ravagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.65 ~


## Special Animations

## Iron Golem death animation
execute as @e[type=#deathanimations:marker_entities,tag=iron_golem_death,scores={cooldown=..53}] at @s run function deathanimations:animation/iron_golem

execute as @e[type=#deathanimations:marker_entities,tag=iron_golem_death,scores={cooldown=51..}] at @s unless entity @s[nbt={ArmorItems:[{},{},{},{Count:1b}]}] run kill @s

execute as @e[type=#deathanimations:marker_entities,tag=iron_golem_death,scores={cooldown=51..}] at @s positioned ~ ~1.4 ~ if block ^1.3 ^ ^2 #deathanimations:nonsolid if block ^-1.3 ^ ^2 #deathanimations:nonsolid run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{da_drop:1,CustomModelData:9,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}

execute as @e[type=#deathanimations:marker_entities,tag=iron_golem_death,scores={cooldown=51..500}] at @s positioned ~ ~1.4 ~ unless block ^1.3 ^ ^2 #deathanimations:nonsolid run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{da_drop:1,CustomModelData:10,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}
execute as @e[type=#deathanimations:marker_entities,tag=iron_golem_death,scores={cooldown=51..500}] at @s positioned ~ ~1.4 ~ unless block ^-1.3 ^ ^2 #deathanimations:nonsolid run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{da_drop:1,CustomModelData:11,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}
execute as @e[type=#deathanimations:marker_entities,tag=iron_golem_death,scores={cooldown=51..500}] at @s positioned ~ ~1.4 ~ unless block ^-1.3 ^ ^2 #deathanimations:nonsolid unless block ^1.3 ^ ^2 #deathanimations:nonsolid run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{da_drop:1,CustomModelData:12,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}
kill @e[type=#deathanimations:marker_entities,tag=iron_golem_death,scores={cooldown=1000..}]

## Ravager death animation
execute as @e[type=#deathanimations:marker_entities,tag=ravager_death,scores={cooldown=..53}] at @s run function deathanimations:animation/ravager
kill @e[type=#deathanimations:marker_entities,tag=ravager_death,scores={cooldown=1000..}]

## Endermite death animation
execute if entity @e[type=#deathanimations:marker_entities,tag=endermite] run function deathanimations:animation/endermite

## Phantom animation
execute if entity @e[type=phantom,tag=explode] run function deathanimations:animation/phantom


## Summon Death Detection

execute as @e[type=#deathanimations:marker_entities,tag=death_detection] at @s rotated as @s run function deathanimations:general/detection
execute as @e[type=#deathanimations:marker_entities,tag=death_detection] at @s run function deathanimations:general/special_nbt_detection


## Detect new entities
# Now in /loops
execute as @r[gamemode=!spectator] at @s run function deathanimations:initalise_events



## Despawn Bodyparts

execute as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=500..}] at @s run tp @s ~ ~-0.001 ~
execute if score Global part_lifetime matches 0 as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=500..}] at @s run tp @s ~ ~-0.002 ~
execute as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=500}] at @s run data merge entity @s {NoGravity:1b,Silent:1b}
# reset now in /loop/remove_lag
execute as @e[type=#deathanimations:marker_entities,tag=bodypart,tag=torso,scores={timeout_parts=851}] at @s run function deathanimations:spawn_loot
execute as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=855..}] at @s run tp @s ~ ~-0.0031 ~
execute as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=855..},tag=ravager] at @s run tp @s ~ ~-0.007 ~
kill @e[scores={timeout_parts=951..},type=minecraft:armor_stand]

execute if score Global part_lifetime matches ..2 run kill @e[type=armor_stand,scores={age=1599..}]
execute if score Global part_lifetime matches 3.. run kill @e[type=armor_stand,scores={age=95999..}]

## remove Lag (Teils in /loop/remove_lag)

execute store result score global entity_count run execute if entity @e[type=#deathanimations:marker_entities,tag=bodypart]
execute if score Global part_lifetime matches ..2 run execute if score global entity_count matches 50.. run function deathanimations:clear


## crawler; Deactivated for now

#effect give @e[tag=crawler_core] minecraft:slowness 1 4 true

#team join NoCollision @e[tag=crawler_visual]
#team join NoCollision @e[tag=crawler_visual_head]

#scoreboard players set @e[tag=crawler] nope 1


## low performance bodyparts [WIP]
execute if score Global part_lifetime matches 2.. run execute as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={age=35..},tag=!OnGround_next] at @s unless block ~ ~-0.1 ~ #deathanimations:nonsolid unless entity @e[type=!armor_stand,type=!area_effect_cloud,type=!item,type=!arrow,distance=..8] run function deathanimations:low_p_mode/bodypart_duplicate
execute if score Global part_lifetime matches 2.. run execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={age=35..,timeout_parts=1}] at @s unless block ~ ~1.3 ~ #deathanimations:nonsolid unless entity @e[type=!armor_stand,type=!area_effect_cloud,type=!item,type=!arrow,distance=..7] run function deathanimations:low_p_mode/activate

execute if score Global part_lifetime matches 2.. run execute as @e[type=#deathanimations:marker_entities,tag=low_p_mode] at @s if entity @a[distance=..25] if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!item,type=!arrow,distance=..4] run function deathanimations:low_p_mode/revive
execute if score Global part_lifetime matches ..1 run execute as @e[type=#deathanimations:marker_entities,tag=low_p_mode] at @s run function deathanimations:low_p_mode/revive


## visual correction

execute as @e[type=#deathanimations:marker_entities,tag=animal_death] at @s run tp @s ~ ~0.15 ~
# Small
execute as @e[type=#deathanimations:marker_entities,tag=correct,nbt={Small:1b}] at @s run tp @s ~ ~0.73 ~

execute as @e[type=#deathanimations:marker_entities,tag=visual] at @s run function deathanimations:visual_correction/encode


## ragdolls
execute if score Global part_lifetime matches ..2 run scoreboard players add @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom] timeout_parts 1

execute as @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom,scores={timeout_parts=450..}] at @s run tp @s ~ ~-0.001 ~
execute as @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom,tag=ragdoll_torso_nom,scores={timeout_parts=851}] at @s run function deathanimations:spawn_loot
execute as @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom,scores={timeout_parts=951..}] run kill @s

execute as @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom,tag=ragdoll_torso_nom,tag=ragdoll_zombie] at @s if entity @a[gamemode=!spectator,distance=..2] positioned ~ ~2 ~ run function deathanimations:ragdoll_revive_zombie
execute as @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom,tag=ragdoll_torso_nom,tag=ragdoll_zombie] at @s if entity @a[gamemode=!spectator,distance=..35] if block ~ ~1 ~ #deathanimations:nonsolid positioned ~ ~2 ~ run function deathanimations:ragdoll_revive_zombie

execute as @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom,tag=ragdoll_torso_nom,tag=ragdoll_plain_villager] at @s if entity @a[gamemode=!spectator,distance=..2] positioned ~ ~2 ~ run function deathanimations:ragdoll_revive_plain_villager
execute as @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom,tag=ragdoll_torso_nom,tag=ragdoll_plain_villager] at @s if entity @a[gamemode=!spectator,distance=..35] if block ~ ~1 ~ #deathanimations:nonsolid positioned ~ ~2 ~ run function deathanimations:ragdoll_revive_plain_villager

# explosion
scoreboard players set @e[type=#deathanimations:marker_entities,tag=ragdoll_torso_nom] OnFire 0
execute as @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom,tag=ragdoll_torso_nom] at @s if entity @e[type=tnt,distance=..8,nbt={Fuse:1s}] positioned ~ ~1.5 ~ run function deathanimations:summon_zombie
execute as @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom] at @s if entity @e[type=tnt,distance=..9,nbt={Fuse:1s}] run kill @s

# fire
execute as @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom] at @s if block ~ ~2 ~ fire run particle smoke ~ ~1.3 ~ 0.1 0.1 0.1 0.01 5
execute as @e[type=#deathanimations:marker_entities,tag=ragdoll_visual_nom] at @s if block ~ ~2 ~ lava run particle smoke ~ ~1.3 ~ 0.1 0.1 0.1 0.01 5

execute as @e[type=#deathanimations:marker_entities,tag=ragdoll] at @s if block ~ ~2 ~ fire run particle smoke ~ ~1.3 ~ 0.1 0.1 0.1 0.01 1
execute as @e[type=#deathanimations:marker_entities,tag=ragdoll] at @s if block ~ ~2 ~ lava run particle smoke ~ ~1.3 ~ 0.1 0.1 0.1 0.01 1
