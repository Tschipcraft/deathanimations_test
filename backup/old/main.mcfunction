##by Tschipcraft

execute as @e[tag=visual,nbt={Small:1b}] at @s run tp @s ~ ~-0.73 ~
execute as @e[tag=animal_death] at @s run tp @s ~ ~-0.15 ~

execute as @e[type=arrow,nbt={inGround:0b}] at @s run summon minecraft:area_effect_cloud ^ ^-1 ^-2 {Tags:[arrow],Radius:0f,RadiusPerTick:0f,Duration:10}
execute as @e[type=tnt] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[explosion],Radius:0f,RadiusPerTick:0f,Duration:5}
execute as @e[type=creeper,nbt={ignited:1b}] at @s run summon minecraft:area_effect_cloud ~ ~0.3 ~ {Tags:[explosion],Radius:0f,RadiusPerTick:0f,Duration:5}
execute as @e[type=iron_golem] at @s run summon minecraft:area_effect_cloud ~ ~0.3 ~ {Tags:[iron_golem],Radius:0f,RadiusPerTick:0f,Duration:2}

scoreboard players add @e[tag=arrow] age 1

## lava kill
execute as @e[tag=bodypart] at @s if block ~ ~ ~ lava run particle minecraft:block magma_block ~ ~ ~ 0.2 0.2 0.2 0 100 normal
execute as @e[tag=bodypart] at @s if block ~ ~ ~ lava run particle minecraft:falling_dust obsidian ~ ~ ~ 0.2 0.2 0.2 0 50 normal
execute as @e[tag=bodypart] at @s if block ~ ~ ~ lava run playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~
execute as @e[tag=bodypart] at @s if block ~ ~ ~ lava run kill @e[tag=visual,limit=1,sort=nearest,distance=..2]
execute as @e[tag=bodypart] at @s if block ~ ~ ~ lava run kill @e[tag=animal_death,limit=1,sort=nearest,distance=..2]
execute as @e[tag=bodypart] at @s if block ~ ~ ~ lava run kill @e[tag=villager_like_death,limit=1,sort=nearest,distance=..2]
execute as @e[tag=bodypart] at @s if block ~ ~ ~ lava run kill @s


##**
function deathanimations:lame_death

## collision
execute as @e[tag=bodypart] at @s if entity @e[type=!tropical_fish,type=!cod,type=!salmon,type=!armor_stand,type=!item,distance=..0.5] run function deathanimations:ragdoll_push
execute as @e[tag=bodypart] at @s if entity @e[tag=bodypart,distance=0.01..0.2] run function deathanimations:bodypart_push

## rotation
execute as @e[tag=bodypart] at @s if block ~ ~-0.1 ~ air run scoreboard players add @s rotation 20
execute as @e[tag=visual,tag=arm] at @s positioned ~ ~1.4 ~ store result entity @s Pose.Head[0] float -1 run scoreboard players get @e[tag=arm,tag=bodypart,distance=..1,sort=nearest,limit=1] rotation
execute as @e[tag=visual,tag=torso] at @s positioned ~ ~1.4 ~ store result entity @s Pose.Head[0] float 1 run scoreboard players get @e[tag=torso,tag=bodypart,distance=..1,sort=nearest,limit=1] rotation
execute as @e[tag=visual,tag=leg] at @s positioned ~ ~1.4 ~ store result entity @s Pose.Head[0] float -1 run scoreboard players get @e[tag=leg,tag=bodypart,distance=..1,sort=nearest,limit=1] rotation
execute as @e[tag=visual,tag=head] at @s positioned ~ ~1.4 ~ store result entity @s Pose.Head[0] float -1 run scoreboard players get @e[tag=head,tag=bodypart,distance=..1,sort=nearest,limit=1] rotation
execute as @e[tag=visual,tag=item] at @s positioned ~ ~1.4 ~ store result entity @s Pose.RightArm[1] float 1 run scoreboard players get @e[tag=item,tag=bodypart,distance=..1,sort=nearest,limit=1] rotation

scoreboard players set @e[tag=bodypart,scores={rotation=181..}] rotation 1
## hier
execute as @e[tag=bodypart,tag=zombiebody] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches -180..0 run scoreboard players set @s rotation -90
execute as @e[tag=bodypart,tag=zombiebody] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches 0..180 run scoreboard players set @s rotation 90
execute as @e[tag=bodypart,tag=skeletonbody] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches -180..0 run scoreboard players set @s rotation -90
execute as @e[tag=bodypart,tag=skeletonbody] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches 0..180 run scoreboard players set @s rotation 90
execute as @e[tag=bodypart,tag=creeperbody] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches -180..0 run scoreboard players set @s rotation -90
execute as @e[tag=bodypart,tag=creeperbody] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches 0..180 run scoreboard players set @s rotation 90
execute as @e[tag=bodypart,tag=huskbody] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches -180..0 run scoreboard players set @s rotation -90
execute as @e[tag=bodypart,tag=huskbody] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches 0..180 run scoreboard players set @s rotation 90
execute as @e[tag=bodypart,tag=drownedbody] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches -180..0 run scoreboard players set @s rotation -90
execute as @e[tag=bodypart,tag=drownedbody] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches 0..180 run scoreboard players set @s rotation 90
execute as @e[tag=bodypart,tag=wither_skeletonbody] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches -180..0 run scoreboard players set @s rotation -90
execute as @e[tag=bodypart,tag=wither_skeletonbody] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches 0..180 run scoreboard players set @s rotation 90



execute as @e[tag=bodypart,tag=arm] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches -80..80 run scoreboard players set @s rotation 1
execute as @e[tag=bodypart,tag=arm] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches 100..180 run scoreboard players set @s rotation 180
execute as @e[tag=bodypart,tag=arm] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches -180..-100 run scoreboard players set @s rotation 180
execute as @e[tag=bodypart,tag=arm] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches -100..-80 run scoreboard players set @s rotation 90
execute as @e[tag=bodypart,tag=arm] at @s unless block ~ ~-0.1 ~ air if score @s rotation matches 80..100 run scoreboard players set @s rotation -90

execute as @e[tag=bodypart,tag=item] at @s unless block ~ ~-0.1 ~ air run scoreboard players set @s rotation 1
execute as @e[tag=bodypart,tag=bow] at @s unless block ~ ~-0.1 ~ air run scoreboard players set @s rotation 10



execute as @e[tag=visual,tag=arm] at @s positioned ~ ~1.4 ~ at @e[tag=arm,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
execute as @e[tag=visual,tag=torso] at @s positioned ~ ~1.4 ~ at @e[tag=bodypart,tag=torso,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
execute as @e[tag=visual,tag=leg] at @s positioned ~ ~1.4 ~ at @e[tag=leg,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
execute as @e[tag=visual,tag=head] at @s positioned ~ ~1.4 ~ at @e[tag=head,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
execute as @e[tag=visual,tag=item] at @s positioned ~ ~1.4 ~ at @e[tag=item,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.3 ~
execute as @e[tag=visual,tag=item,tag=bow] at @s positioned ~ ~1.4 ~ at @e[tag=item,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~-1.4 ~
execute as @e[tag=visual,tag=fish] at @s positioned ~ ~1.4 ~ at @e[tag=fish,tag=bodypart,sort=nearest,limit=1,distance=..5] run tp @s ~ ~ ~ ~ ~



execute as @e[tag=visual] at @s unless entity @e[tag=bodypart,distance=..10] run kill @s

##execute as @e[tag=visual,limit=1,sort=random] at @s if entity @e[tag=visual,distance=0.00001..0.1] run kill @s

scoreboard players add @e[tag=visual] rotation 0


## Detect new mobs

## rewrite here

execute as @a at @s run function deathanimations:initalise
execute as @e[type=area_effect_cloud] at @s run function deathanimations:initalise

{\
## hier
scoreboard players add @e[type=minecraft:zombie] initalise 0
scoreboard players add @e[type=minecraft:skeleton] initalise 0
scoreboard players add @e[type=minecraft:creeper] initalise 0
scoreboard players add @e[type=minecraft:husk] initalise 0
scoreboard players add @e[type=minecraft:drowned] initalise 0
scoreboard players add @e[type=minecraft:wither_skeleton] initalise 0
scoreboard players add @e[type=minecraft:phantom] initalise 0
scoreboard players add @e[type=minecraft:pig] initalise 0
scoreboard players add @e[type=minecraft:cow] initalise 0
scoreboard players add @e[type=minecraft:sheep] initalise 0
scoreboard players add @e[type=minecraft:chicken] initalise 0
scoreboard players add @e[type=minecraft:villager] initalise 0
scoreboard players add @e[type=minecraft:vindicator] initalise 0
scoreboard players add @e[type=minecraft:evoker] initalise 0
scoreboard players add @e[type=minecraft:pillager] initalise 0
scoreboard players add @e[type=minecraft:iron_golem] initalise 0
scoreboard players add @e[type=minecraft:tropical_fish] initalise 0
scoreboard players add @e[type=minecraft:dolphin] initalise 0
scoreboard players add @e[type=minecraft:salmon] initalise 0


## Modify nbt from new mobs

## hier
data merge entity @e[type=zombie,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=skeleton,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=creeper,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=husk,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=drowned,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=wither_skeleton,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=phantom,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=pig,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=cow,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=sheep,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=chicken,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=villager,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=vindicator,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=evoker,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=pillager,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=iron_golem,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=tropical_fish,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=dolphin,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
data merge entity @e[type=salmon,scores={initalise=0..10},limit=1,sort=random] {DeathTime:19s}
}\

## Timeout

execute as @e[tag=bodypart] at @s unless block ~ ~-0.1 ~ air run scoreboard players add @s timeout_parts 1
execute as @e[tag=visual] at @s unless block ~ ~-0.1 ~ air run scoreboard players add @s timeout_parts 1
scoreboard players add @e[tag=bodypart] age 1
scoreboard players add @e[tag=visual] age 1

execute as @e[tag=bodypart,scores={timeout_parts=500..}] at @s if block ~ ~-0.1 ~ air run scoreboard players set @s timeout_parts 400

##Nur wenn Baby verfügbar

## Special nbt

scoreboard players add @e[tag=zombie_death] IsSpecial 0
execute as @e[tag=zombie_death] at @s if entity @e[type=zombie,sort=nearest,limit=1,nbt={IsBaby:1b},distance=..0.1] run scoreboard players set @s IsSpecial 1

scoreboard players add @e[tag=husk_death] IsSpecial 0
execute as @e[tag=husk_death] at @s if entity @e[type=husk,sort=nearest,limit=1,nbt={IsBaby:1b},distance=..0.1] run scoreboard players set @s IsSpecial 1

scoreboard players add @e[tag=drowned_death] IsSpecial 0
execute as @e[tag=drowned_death] at @s if entity @e[type=drowned,sort=nearest,limit=1,nbt={IsBaby:1b},distance=..0.1] run scoreboard players set @s IsSpecial 1

##Funktioniert nicht for some reason
execute as @e[tag=skeleton_death] at @s if entity @e[type=skeleton,sort=nearest,limit=1,nbt={HandItems:[{Count:1b}]},distance=..0.1] store result entity @s HandItems int 1 run data get entity @e[type=skeleton,sort=nearest,limit=1] HandItems

##Wenn OnFire geht
scoreboard players add @e[tag=zombie_death] OnFire 0
execute as @e[tag=zombie_death] at @s if entity @e[type=zombie,distance=..0.3] unless entity @e[type=zombie,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.5] run scoreboard players set @s OnFire 1
execute as @e[tag=zombie_death] at @s if entity @e[type=zombie,distance=..0.3] if entity @e[type=zombie,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.9] run scoreboard players set @s OnFire 0

scoreboard players add @e[tag=husk_death] OnFire 0
execute as @e[tag=husk_death] at @s if entity @e[type=husk,distance=..0.3] unless entity @e[type=husk,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.5] run scoreboard players set @s OnFire 1
execute as @e[tag=husk_death] at @s if entity @e[type=husk,distance=..0.3] if entity @e[type=husk,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.9] run scoreboard players set @s OnFire 0

scoreboard players add @e[tag=drowned_death] OnFire 0
execute as @e[tag=drowned_death] at @s if entity @e[type=drowned,distance=..0.3] unless entity @e[type=drowned,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.5] run scoreboard players set @s OnFire 1
execute as @e[tag=drowned_death] at @s if entity @e[type=drowned,distance=..0.3] if entity @e[type=drowned,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.9] run scoreboard players set @s OnFire 0

## Fish
##hier theoretisch
execute as @e[tag=fish,scores={age=900..}] at @s run tp @s ~ -2 ~
kill @e[tag=fish,scores={age=900..}]
scoreboard players add @e[tag=tropical_fish_death] age 1
execute as @e[tag=tropical_fish_death,scores={age=5}] at @s store result score @s Variant run data get entity @e[type=tropical_fish,sort=nearest,limit=1] Variant

execute as @e[tag=fish] at @s if block ~ ~ ~ water run data merge entity @s {CustomNameVisible:0b,CustomName:"{\"text\":\"Dinnerbone\"}"}
execute as @e[tag=fish] at @s unless entity @s[type=dolphin] unless block ~ ~ ~ water run data merge entity @s {CustomNameVisible:0b,CustomName:"{\"text\":\"\"}"}

## Normal death rotation

scoreboard players add @e[tag=animal_death] cooldown 0
scoreboard players add @e[tag=villager_like_death] cooldown 0
scoreboard players add @e[tag=iron_golem_death] cooldown 0
scoreboard players add @e[tag=bodypart] cooldown 0
scoreboard players add @e[tag=animal_death,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[tag=villager_like_death,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[tag=pigbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[tag=cowbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[tag=sheepbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[tag=chickenbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[tag=villagerbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[tag=vindicatorbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[tag=evokerbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[tag=pillagerbody,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[tag=iron_golem_death,scores={cooldown=1..}] cooldown 1
scoreboard players add @e[tag=iron_golembody,scores={cooldown=1..}] cooldown 1

execute as @e[tag=pig_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=pigbody,sort=nearest,limit=1] if score @e[tag=pigbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
execute as @e[tag=chicken_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=chickenbody,sort=nearest,limit=1] if score @e[tag=chickenbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
execute as @e[tag=cow_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=cowbody,sort=nearest,limit=1] if score @e[tag=cowbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
execute as @e[tag=sheep_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=sheepbody,sort=nearest,limit=1] if score @e[tag=sheepbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~

execute as @e[tag=villager_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=villagerbody,sort=nearest,limit=1] if score @e[tag=villagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
execute as @e[tag=vindicator_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=vindicatorbody,sort=nearest,limit=1] if score @e[tag=vindicatorbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
execute as @e[tag=evoker_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=evokerbody,sort=nearest,limit=1] if score @e[tag=evokerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
execute as @e[tag=pillager_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=pillagerbody,sort=nearest,limit=1] if score @e[tag=pillagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~

execute as @e[tag=iron_golem_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=iron_golembody,sort=nearest,limit=1,scores={cooldown=20..}] if score @e[tag=iron_golembody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ^ ^-1.1 ^0.1
execute as @e[tag=iron_golem_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=iron_golembody,sort=nearest,limit=1,scores={cooldown=..20}] if score @e[tag=iron_golembody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.0 ~

data merge entity @e[tag=animal_death,scores={cooldown=9,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,90f]}}
data merge entity @e[tag=animal_death,scores={cooldown=1,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,10f]}}
data merge entity @e[tag=animal_death,scores={cooldown=2,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,20f]}}
data merge entity @e[tag=animal_death,scores={cooldown=3,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,30f]}}
data merge entity @e[tag=animal_death,scores={cooldown=4,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,40f]}}
data merge entity @e[tag=animal_death,scores={cooldown=5,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,50f]}}
data merge entity @e[tag=animal_death,scores={cooldown=6,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,60f]}}
data merge entity @e[tag=animal_death,scores={cooldown=7,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,70f]}}
data merge entity @e[tag=animal_death,scores={cooldown=8,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,80f]}}

data merge entity @e[tag=animal_death,scores={cooldown=9,death_rotation=0},limit=1] {Pose:{Head:[0f,0f,-90f]}}
data merge entity @e[tag=animal_death,scores={cooldown=1,death_rotation=0},limit=1] {Pose:{Head:[0f,0f,-10f]}}
data merge entity @e[tag=animal_death,scores={cooldown=2,death_rotation=0},limit=1] {Pose:{Head:[0f,0f,-20f]}}
data merge entity @e[tag=animal_death,scores={cooldown=3,death_rotation=0},limit=1] {Pose:{Head:[0f,0f,-30f]}}
data merge entity @e[tag=animal_death,scores={cooldown=4,death_rotation=0},limit=1] {Pose:{Head:[0f,0f,-40f]}}
data merge entity @e[tag=animal_death,scores={cooldown=5,death_rotation=0},limit=1] {Pose:{Head:[0f,0f,-50f]}}
data merge entity @e[tag=animal_death,scores={cooldown=6,death_rotation=0},limit=1] {Pose:{Head:[0f,0f,-60f]}}
data merge entity @e[tag=animal_death,scores={cooldown=7,death_rotation=0},limit=1] {Pose:{Head:[0f,0f,-70f]}}
data merge entity @e[tag=animal_death,scores={cooldown=8,death_rotation=0},limit=1] {Pose:{Head:[0f,0f,-80f]}}

data merge entity @e[tag=animal_death,scores={cooldown=9,death_rotation=1},limit=1] {Pose:{Head:[0f,0f,90f]}}
data merge entity @e[tag=animal_death,scores={cooldown=1,death_rotation=1},limit=1] {Pose:{Head:[0f,0f,10f]}}
data merge entity @e[tag=animal_death,scores={cooldown=2,death_rotation=1},limit=1] {Pose:{Head:[0f,0f,20f]}}
data merge entity @e[tag=animal_death,scores={cooldown=3,death_rotation=1},limit=1] {Pose:{Head:[0f,0f,30f]}}
data merge entity @e[tag=animal_death,scores={cooldown=4,death_rotation=1},limit=1] {Pose:{Head:[0f,0f,40f]}}
data merge entity @e[tag=animal_death,scores={cooldown=5,death_rotation=1},limit=1] {Pose:{Head:[0f,0f,50f]}}
data merge entity @e[tag=animal_death,scores={cooldown=6,death_rotation=1},limit=1] {Pose:{Head:[0f,0f,60f]}}
data merge entity @e[tag=animal_death,scores={cooldown=7,death_rotation=1},limit=1] {Pose:{Head:[0f,0f,70f]}}
data merge entity @e[tag=animal_death,scores={cooldown=8,death_rotation=1},limit=1] {Pose:{Head:[0f,0f,80f]}}

data merge entity @e[tag=animal_death,scores={cooldown=9,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-90f]}}
data merge entity @e[tag=animal_death,scores={cooldown=1,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-10f]}}
data merge entity @e[tag=animal_death,scores={cooldown=2,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-20f]}}
data merge entity @e[tag=animal_death,scores={cooldown=3,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-30f]}}
data merge entity @e[tag=animal_death,scores={cooldown=4,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-40f]}}
data merge entity @e[tag=animal_death,scores={cooldown=5,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-50f]}}
data merge entity @e[tag=animal_death,scores={cooldown=6,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-60f]}}
data merge entity @e[tag=animal_death,scores={cooldown=7,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-70f]}}
data merge entity @e[tag=animal_death,scores={cooldown=8,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-80f]}}



data merge entity @e[tag=villager_like_death,scores={cooldown=9,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,90f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=1,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,10f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=2,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,20f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=3,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,30f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=4,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,40f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=5,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,50f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=6,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,60f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=7,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,70f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=8,death_rotation=3},limit=1] {Pose:{Head:[0f,0f,80f]}}

data merge entity @e[tag=villager_like_death,scores={cooldown=9,death_rotation=0},limit=1] {Pose:{Head:[-90f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=1,death_rotation=0},limit=1] {Pose:{Head:[-10f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=2,death_rotation=0},limit=1] {Pose:{Head:[-20f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=3,death_rotation=0},limit=1] {Pose:{Head:[-30f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=4,death_rotation=0},limit=1] {Pose:{Head:[-40f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=5,death_rotation=0},limit=1] {Pose:{Head:[-50f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=6,death_rotation=0},limit=1] {Pose:{Head:[-60f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=7,death_rotation=0},limit=1] {Pose:{Head:[-70f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=8,death_rotation=0},limit=1] {Pose:{Head:[-80f,0f,0f]}}

data merge entity @e[tag=villager_like_death,scores={cooldown=9,death_rotation=1},limit=1] {Pose:{Head:[90f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=1,death_rotation=1},limit=1] {Pose:{Head:[10f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=2,death_rotation=1},limit=1] {Pose:{Head:[20f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=3,death_rotation=1},limit=1] {Pose:{Head:[30f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=4,death_rotation=1},limit=1] {Pose:{Head:[40f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=5,death_rotation=1},limit=1] {Pose:{Head:[50f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=6,death_rotation=1},limit=1] {Pose:{Head:[60f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=7,death_rotation=1},limit=1] {Pose:{Head:[70f,0f,0f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=8,death_rotation=1},limit=1] {Pose:{Head:[80f,0f,0f]}}

data merge entity @e[tag=villager_like_death,scores={cooldown=9,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-90f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=1,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-10f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=2,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-20f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=3,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-30f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=4,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-40f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=5,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-50f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=6,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-60f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=7,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-70f]}}
data merge entity @e[tag=villager_like_death,scores={cooldown=8,death_rotation=2},limit=1] {Pose:{Head:[0f,0f,-80f]}}

kill @e[tag=villager_like_death,scores={cooldown=1000..}]

kill @e[tag=animal_death,scores={cooldown=1000..}]

## Iron Golem death animation

data merge entity @e[tag=iron_golem_death,scores={cooldown=20},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:3,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

execute as @e[tag=iron_golem_death,scores={cooldown=20},limit=1] at @s run playsound minecraft:block.anvil.land neutral @a ~ ~ ~
execute as @e[tag=iron_golem_death,scores={cooldown=50},limit=1] at @s run playsound minecraft:block.anvil.land neutral @a ~ ~ ~

data merge entity @e[tag=iron_golem_death,scores={cooldown=41},limit=1] {Pose:{Head:[10f,0f,0f]}}
data merge entity @e[tag=iron_golem_death,scores={cooldown=41},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:4,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

data merge entity @e[tag=iron_golem_death,scores={cooldown=42},limit=1] {Pose:{Head:[20f,0f,0f]}}
data merge entity @e[tag=iron_golem_death,scores={cooldown=42},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:4,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

data merge entity @e[tag=iron_golem_death,scores={cooldown=43},limit=1] {Pose:{Head:[30f,0f,0f]}}
data merge entity @e[tag=iron_golem_death,scores={cooldown=43},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:5,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

data merge entity @e[tag=iron_golem_death,scores={cooldown=44},limit=1] {Pose:{Head:[40f,0f,0f]}}
data merge entity @e[tag=iron_golem_death,scores={cooldown=44},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:5,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

data merge entity @e[tag=iron_golem_death,scores={cooldown=45},limit=1] {Pose:{Head:[50f,0f,0f]}}
data merge entity @e[tag=iron_golem_death,scores={cooldown=45},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:6,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

data merge entity @e[tag=iron_golem_death,scores={cooldown=46},limit=1] {Pose:{Head:[60f,0f,0f]}}
data merge entity @e[tag=iron_golem_death,scores={cooldown=46},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:6,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

data merge entity @e[tag=iron_golem_death,scores={cooldown=47},limit=1] {Pose:{Head:[70f,0f,0f]}}
data merge entity @e[tag=iron_golem_death,scores={cooldown=47},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:7,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

data merge entity @e[tag=iron_golem_death,scores={cooldown=48},limit=1] {Pose:{Head:[80f,0f,0f]}}
data merge entity @e[tag=iron_golem_death,scores={cooldown=48},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:7,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

data merge entity @e[tag=iron_golem_death,scores={cooldown=49},limit=1] {Pose:{Head:[90f,0f,0f]}}
data merge entity @e[tag=iron_golem_death,scores={cooldown=49},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:8,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

data merge entity @e[tag=iron_golem_death,scores={cooldown=51},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:9,display:{Name:"{\"text\":\"iron_golem_lying\",\"italic\":false}"}}}]}


kill @e[tag=iron_golem_death,scores={cooldown=1000..}]


## Bodypart spawn

## hier
execute as @e[tag=zombie_death] at @s at @e[type=zombie] if score @e[type=minecraft:zombie,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=zombie_death,scores={IsSpecial=0}] at @s unless entity @e[type=minecraft:zombie,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_zombie
execute as @e[tag=zombie_death,scores={IsSpecial=1}] at @s unless entity @e[type=minecraft:zombie,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_small_zombie

execute as @e[tag=husk_death] at @s at @e[type=husk] if score @e[type=minecraft:husk,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=husk_death,scores={IsSpecial=0}] at @s unless entity @e[type=minecraft:husk,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_husk
execute as @e[tag=husk_death,scores={IsSpecial=1}] at @s unless entity @e[type=minecraft:husk,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_small_husk

execute as @e[tag=drowned_death] at @s at @e[type=drowned] if score @e[type=minecraft:drowned,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=drowned_death,scores={IsSpecial=0}] at @s unless entity @e[type=minecraft:drowned,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_drowned
execute as @e[tag=drowned_death,scores={IsSpecial=1}] at @s unless entity @e[type=minecraft:drowned,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_small_drowned


execute as @e[tag=skeleton_death] at @s at @e[type=skeleton] if score @e[type=minecraft:skeleton,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=skeleton_death] at @s unless entity @e[type=minecraft:skeleton,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_skeleton

execute as @e[tag=wither_skeleton_death] at @s at @e[type=wither_skeleton] if score @e[type=minecraft:wither_skeleton,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=wither_skeleton_death] at @s unless entity @e[type=minecraft:wither_skeleton,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_wither_skeleton

execute as @e[tag=creeper_death] at @s at @e[type=creeper] if score @e[type=minecraft:creeper,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=creeper_death] at @s unless entity @e[type=minecraft:creeper,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_creeper

execute as @e[tag=phantom_death] at @s at @e[type=phantom] if score @e[type=minecraft:phantom,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=phantom_death] at @s unless entity @e[type=minecraft:phantom,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_phantom

execute as @e[tag=pig_death] at @s at @e[type=pig] if score @e[type=minecraft:pig,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=pig_death,scores={cooldown=0}] at @s unless entity @e[type=minecraft:pig,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_pig

execute as @e[tag=cow_death] at @s at @e[type=cow] if score @e[type=minecraft:cow,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=cow_death,scores={cooldown=0}] at @s unless entity @e[type=minecraft:cow,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_cow

execute as @e[tag=sheep_death] at @s at @e[type=sheep] if score @e[type=minecraft:sheep,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=sheep_death,scores={cooldown=0}] at @s unless entity @e[type=minecraft:sheep,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_sheep

execute as @e[tag=chicken_death] at @s at @e[type=chicken] if score @e[type=minecraft:chicken,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=chicken_death,scores={cooldown=0}] at @s unless entity @e[type=minecraft:chicken,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_chicken

execute as @e[tag=vindicator_death] at @s at @e[type=vindicator] if score @e[type=minecraft:vindicator,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=vindicator_death,scores={cooldown=0}] at @s unless entity @e[type=minecraft:vindicator,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_vindicator

execute as @e[tag=evoker_death] at @s at @e[type=evoker] if score @e[type=minecraft:evoker,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=evoker_death,scores={cooldown=0}] at @s unless entity @e[type=minecraft:evoker,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_evoker

execute as @e[tag=pillager_death] at @s at @e[type=pillager] if score @e[type=minecraft:pillager,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=pillager_death,scores={cooldown=0}] at @s unless entity @e[type=minecraft:pillager,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_pillager

execute as @e[tag=villager_death] at @s at @e[type=villager] if score @e[type=minecraft:villager,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=villager_death,scores={cooldown=0}] at @s unless entity @e[type=minecraft:villager,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_villager

execute as @e[tag=iron_golem_death] at @s at @e[type=iron_golem] if score @e[type=minecraft:iron_golem,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=iron_golem_death,scores={cooldown=0}] at @s unless entity @e[type=minecraft:iron_golem,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_iron_golem

execute as @e[tag=tropical_fish_death] at @s at @e[type=tropical_fish] if score @e[type=minecraft:tropical_fish,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=tropical_fish_death] at @s unless entity @e[type=minecraft:tropical_fish,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_tropical_fish

execute as @e[tag=dolphin_death] at @s at @e[type=dolphin] if score @e[type=minecraft:dolphin,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=dolphin_death] at @s unless entity @e[type=minecraft:dolphin,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_dolphin

execute as @e[tag=salmon_death] at @s at @e[type=salmon] if score @e[type=minecraft:salmon,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
execute as @e[tag=salmon_death] at @s unless entity @e[type=minecraft:salmon,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_salmon

## Timeout

execute as @e[tag=bodypart,scores={timeout_parts=500..}] at @s run tp @s ~ ~-0.001 ~
execute as @e[tag=bodypart,scores={timeout_parts=500..}] at @s run data merge entity @s {NoGravity:1}
execute as @e[tag=bodypart,scores={timeout_parts=1..499}] at @s run data merge entity @s {NoGravity:0}
kill @e[scores={timeout_parts=1000..},type=minecraft:armor_stand]

kill @e[type=armor_stand,scores={age=999..}]

## Visuals

execute as @e[tag=visual,sort=random,limit=1,scores={rotation=0}] at @s run scoreboard players set @s rotation 50
execute as @e[tag=visual,sort=random,limit=1,scores={rotation=0}] at @s run scoreboard players set @s rotation -50
execute as @e[tag=visual,sort=random,limit=1,scores={rotation=0}] at @s run scoreboard players set @s rotation 90
execute as @e[tag=visual,sort=random,limit=1,scores={rotation=0}] at @s run scoreboard players set @s rotation -90

execute as @e[tag=visual,scores={rotation=-90}] at @s if block ~ ~0.9 ~ air run tp @s ~ ~ ~ ~-90 ~
execute as @e[tag=visual,scores={rotation=90}] at @s if block ~ ~0.9 ~ air run tp @s ~ ~ ~ ~90 ~
execute as @e[tag=visual,scores={rotation=-50}] at @s if block ~ ~0.9 ~ air run tp @s ~ ~ ~ ~-50 ~
execute as @e[tag=visual,scores={rotation=50}] at @s if block ~ ~0.9 ~ air run tp @s ~ ~ ~ ~50 ~


execute as @e[tag=bodypart] at @s if block ~ ~-0.1 ~ air unless block ~0.2 ~-0.1 ~ air run data merge entity @s {Motion:[-0.2,0.1,0.0]}
execute as @e[tag=bodypart] at @s if block ~ ~-0.1 ~ air unless block ~-0.2 ~-0.1 ~ air run data merge entity @s {Motion:[0.2,0.1,0.0]}
execute as @e[tag=bodypart] at @s if block ~ ~-0.1 ~ air unless block ~ ~-0.1 ~0.2 air run data merge entity @s {Motion:[0.0,0.1,-0.2]}
execute as @e[tag=bodypart] at @s if block ~ ~-0.1 ~ air unless block ~ ~-0.1 ~-0.2 air run data merge entity @s {Motion:[0.0,0.1,0.2]}
execute as @e[tag=bodypart] at @s if block ~ ~-0.1 ~ cave_air unless block ~0.2 ~-0.1 ~ cave_air run data merge entity @s {Motion:[-0.2,0.1,0.0]}
execute as @e[tag=bodypart] at @s if block ~ ~-0.1 ~ cave_air unless block ~-0.2 ~-0.1 ~ cave_air run data merge entity @s {Motion:[0.2,0.1,0.0]}
execute as @e[tag=bodypart] at @s if block ~ ~-0.1 ~ cave_air unless block ~ ~-0.1 ~0.2 cave_air run data merge entity @s {Motion:[0.0,0.1,-0.2]}
execute as @e[tag=bodypart] at @s if block ~ ~-0.1 ~ cave_air unless block ~ ~-0.1 ~-0.2 cave_air run data merge entity @s {Motion:[0.0,0.1,0.2]}

## for calculations
scoreboard players set @e[tag=bodypart] staticy 2


## Motion

## Nur entity einfügen
execute as @e[tag=bodypart,scores={age=1}] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,limit=1,type=!armor_stand,type=!area_effect_cloud,type=!salmon,type=!dolphin,type=!tropical_fish,type=!phantom,type=!experience_orb,type=!zombie,type=!husk,type=!drowned,type=!skeleton,type=!wither_skeleton,type=!item,distance=..10]
execute as @e[tag=bodypart,scores={age=1}] at @s if entity @e[tag=arrow,distance=..9] run tp @s ~ ~ ~ facing entity @e[tag=arrow,limit=1,sort=furthest,distance=..9]
execute as @e[tag=bodypart,scores={age=1}] at @s if entity @e[tag=explosion,distance=..9] run tp @s ~ ~ ~ facing entity @e[tag=explosion,limit=1,sort=nearest,distance=..9]
execute as @e[tag=bodypart,scores={age=1}] at @s if entity @e[tag=explosion,distance=..9] run tag @s add exploded
execute as @e[tag=bodypart,scores={age=1}] at @s if entity @e[tag=arrow,distance=..9] run tag @s add arrowed
execute as @e[tag=bodypart,scores={age=1}] at @s unless entity @s[tag=iron_golem] run function deathanimations:tick


## Summon death detection

{\
##hier
execute as @a at @s as @e[type=zombie,scores={initalise=0},limit=1,sort=nearest] at @s if entity @a[distance=..10] unless entity @s[scores={nope=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[zombie_death,death_detection]}
execute as @e[type=zombie,scores={initalise=0},limit=1,sort=random] at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] unless entity @s[scores={nope=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[zombie_death,death_detection]}
##execute as @e[type=zombie,scores={initalise=0},limit=1,sort=random] at @s if score @s health matches 0..2 unless entity @s[scores={nope=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[zombie_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=zombie,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=zombie_death,distance=..30] initalise 1

execute as @a at @s as @e[type=husk,scores={initalise=0},limit=1,sort=nearest] at @s if entity @a[distance=..10] unless entity @s[scores={nope=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[husk_death,death_detection]}
execute as @e[type=husk,scores={initalise=0},limit=1,sort=random] at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] unless entity @s[scores={nope=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[husk_death,death_detection]}
##execute as @e[type=husk,scores={initalise=0},limit=1,sort=random] at @s if score @s health matches 0..2 unless entity @s[scores={nope=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[husk_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=husk,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=husk_death,distance=..30] initalise 1

execute as @a at @s as @e[type=drowned,scores={initalise=0},limit=1,sort=nearest] at @s if entity @a[distance=..10] unless entity @s[scores={nope=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[drowned_death,death_detection]}
execute as @e[type=drowned,scores={initalise=0},limit=1,sort=random] at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] unless entity @s[scores={nope=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[drowned_death,death_detection]}
##execute as @e[type=drowned,scores={initalise=0},limit=1,sort=random] at @s if score @s health matches 0..2 unless entity @s[scores={nope=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[drowned_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=drowned,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=drowned_death,distance=..30] initalise 1



execute as @a at @s as @e[type=skeleton,scores={initalise=0},limit=1,sort=nearest] at @s if entity @a[distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[skeleton_death,death_detection]}
execute as @e[type=skeleton,scores={initalise=0},limit=1,sort=random] at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[skeleton_death,death_detection]}
##execute as @e[type=skeleton,scores={initalise=0},limit=1,sort=random] at @s if score @s health matches 0..2 run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[skeleton_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=skeleton,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=skeleton_death,distance=..30] initalise 1

execute as @a at @s as @e[type=wither_skeleton,scores={initalise=0},limit=1,sort=nearest] at @s if entity @a[distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[wither_skeleton_death,death_detection]}
execute as @e[type=wither_skeleton,scores={initalise=0},limit=1,sort=random] at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[wither_skeleton_death,death_detection]}
##execute as @e[type=wither_skeleton,scores={initalise=0},limit=1,sort=random] at @s if score @s health matches 0..2 run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[wither_skeleton_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=wither_skeleton,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=wither_skeleton_death,distance=..30] initalise 1


execute as @a at @s as @e[type=creeper,scores={initalise=0},limit=1,sort=nearest] at @s if entity @a[distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[creeper_death,death_detection]}
execute as @e[type=creeper,scores={initalise=0},limit=1,sort=random] at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[creeper_death,death_detection]}
##execute as @e[type=creeper,scores={initalise=0},limit=1,sort=random] at @s if score @s health matches 0..2 run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[creeper_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=creeper,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=creeper_death,distance=..30] initalise 1

execute as @a at @s as @e[type=phantom,scores={initalise=0},limit=1,sort=nearest] at @s at @s if entity @a[distance=..10] unless entity @s[tag=explode] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[phantom_death,death_detection]}
execute as @e[type=phantom,scores={initalise=0},limit=1,sort=random] at @s at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] unless entity @s[tag=explode] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[phantom_death,death_detection]}
##execute as @e[type=phantom,scores={initalise=0},limit=1,sort=random] at @s at @s if score @s health matches 0..2 unless entity @s[tag=explode] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[phantom_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=phantom,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=phantom_death,distance=..30] initalise 1

execute as @a at @s as @e[type=pig,scores={initalise=0},limit=1,sort=nearest] at @s at @s if entity @a[distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[animal_death,pig_death,lame_death,death_detection]}
execute as @e[type=pig,scores={initalise=0},limit=1,sort=random] at @s at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[animal_death,pig_death,lame_death,death_detection]}
##execute as @e[type=pig,scores={initalise=0},limit=1,sort=random] at @s at @s if score @s health matches 0..2 run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[animal_death,pig_death,lame_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=pig,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=pig_death,distance=..30] initalise 1

execute as @a at @s as @e[type=cow,scores={initalise=0},limit=1,sort=nearest] at @s at @s if entity @a[distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[animal_death,cow_death,lame_death,death_detection]}
execute as @e[type=cow,scores={initalise=0},limit=1,sort=random] at @s at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[animal_death,cow_death,lame_death,death_detection]}
##execute as @e[type=cow,scores={initalise=0},limit=1,sort=random] at @s at @s if score @s health matches 0..2 run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[animal_death,cow_death,lame_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=cow,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=cow_death,distance=..30] initalise 1

execute as @a at @s as @e[type=sheep,scores={initalise=0},limit=1,sort=nearest] at @s at @s if entity @a[distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[animal_death,sheep_death,lame_death,death_detection]}
execute as @e[type=sheep,scores={initalise=0},limit=1,sort=random] at @s at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[animal_death,sheep_death,lame_death,death_detection]}
##execute as @e[type=sheep,scores={initalise=0},limit=1,sort=random] at @s at @s if score @s health matches 0..2 run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[animal_death,sheep_death,lame_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=sheep,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=sheep_death,distance=..30] initalise 1

execute as @a at @s as @e[type=chicken,scores={initalise=0},limit=1,sort=nearest] at @s at @s if entity @a[distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[animal_death,chicken_death,lame_death,death_detection]}
execute as @e[type=chicken,scores={initalise=0},limit=1,sort=random] at @s at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[animal_death,chicken_death,lame_death,death_detection]}
##execute as @e[type=chicken,scores={initalise=0},limit=1,sort=random] at @s at @s if score @s health matches 0..2 run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[animal_death,chicken_death,lame_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=chicken,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=chicken_death,distance=..30] initalise 1

execute as @a at @s as @e[type=villager,scores={initalise=0},limit=1,sort=nearest] at @s at @s if entity @a[distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,villager_death,lame_death,death_detection]}
execute as @e[type=villager,scores={initalise=0},limit=1,sort=random] at @s at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,villager_death,lame_death,death_detection]}
##execute as @e[type=villager,scores={initalise=0},limit=1,sort=random] at @s at @s if score @s health matches 0..2 run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,villager_death,lame_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=villager,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=villager_death,distance=..30] initalise 1

execute as @a at @s as @e[type=vindicator,scores={initalise=0},limit=1,sort=nearest] at @s at @s if entity @a[distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,vindicator_death,lame_death,death_detection]}
execute as @e[type=vindicator,scores={initalise=0},limit=1,sort=random] at @s at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,vindicator_death,lame_death,death_detection]}
##execute as @e[type=vindicator,scores={initalise=0},limit=1,sort=random] at @s at @s if score @s health matches 0..2 run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,vindicator_death,lame_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=vindicator,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=vindicator_death,distance=..30] initalise 1

execute as @a at @s as @e[type=evoker,scores={initalise=0},limit=1,sort=nearest] at @s at @s if entity @a[distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,evoker_death,lame_death,death_detection]}
execute as @e[type=evoker,scores={initalise=0},limit=1,sort=random] at @s at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,evoker_death,lame_death,death_detection]}
##execute as @e[type=evoker,scores={initalise=0},limit=1,sort=random] at @s at @s if score @s health matches 0..2 run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,evoker_death,lame_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=evoker,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=evoker_death,distance=..30] initalise 1

execute as @a at @s as @e[type=pillager,scores={initalise=0},limit=1,sort=nearest] at @s at @s if entity @a[distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,pillager_death,lame_death,death_detection]}
execute as @e[type=pillager,scores={initalise=0},limit=1,sort=random] at @s at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,pillager_death,lame_death,death_detection]}
##execute as @e[type=pillager,scores={initalise=0},limit=1,sort=random] at @s at @s if score @s health matches 0..2 run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[villager_like_death,pillager_death,lame_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=pillager,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=pillager_death,distance=..30] initalise 1

execute as @a at @s as @e[type=iron_golem,scores={initalise=0},limit=1,sort=nearest] at @s at @s if entity @a[distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[iron_golem_death,iron_golem,death_detection]}
execute as @e[type=iron_golem,scores={initalise=0},limit=1,sort=random] at @s at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[iron_golem_death,iron_golem,death_detection]}
##execute as @e[type=iron_golem,scores={initalise=0},limit=1,sort=random] at @s at @s if score @s health matches 0..2 run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[iron_golem_death,iron_golem,death_detection]}
execute as @a at @s run scoreboard players add @e[type=iron_golem,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=iron_golem_death,distance=..30] initalise 1

execute as @a at @s as @e[type=tropical_fish,scores={initalise=0},limit=1,sort=nearest] at @s if entity @a[distance=..10] unless entity @s[scores={nope=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[tropical_fish_death,death_detection]}
execute as @e[type=tropical_fish,scores={initalise=0},limit=1,sort=random] at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] unless entity @s[scores={nope=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[tropical_fish_death,death_detection]}
##execute as @e[type=tropical_fish,scores={initalise=0},limit=1,sort=random] at @s if score @s health matches 0..2 unless entity @s[scores={nope=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[tropical_fish_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=tropical_fish,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=tropical_fish_death,distance=..30] initalise 1

execute as @e[type=dolphin,scores={initalise=0},limit=1,sort=random] at @s if entity @a[distance=..10] unless entity @s[scores={nope=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[dolphin_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=dolphin,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=dolphin_death,distance=..30] initalise 1

execute as @a at @s as @e[type=salmon,scores={initalise=0},limit=1,sort=nearest] at @s if entity @a[distance=..10] unless entity @s[scores={nope=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[salmon_death,death_detection]}
execute as @e[type=salmon,scores={initalise=0},limit=1,sort=random] at @s if entity @a[distance=..30] if entity @e[type=area_effect_cloud,distance=..10] unless entity @s[scores={nope=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[salmon_death,death_detection]}
##execute as @e[type=salmon,scores={initalise=0},limit=1,sort=random] at @s if score @s health matches 0..2 unless entity @s[scores={nope=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,NoGravity:1,Tags:[salmon_death,death_detection]}
execute as @a at @s run scoreboard players add @e[type=salmon,distance=..30] initalise 1
execute as @a at @s run scoreboard players add @e[tag=salmon_death,distance=..30] initalise 1
}\

effect give @e[tag=fish] resistance 1 255 true

## Particle

execute as @e[tag=torso,tag=visual,tag=bloody,scores={age=0..140}] at @s positioned ^0.55 ^ ^ run particle minecraft:block redstone_block ~ ~1.5 ~ 0.01 0 0.01 1 1 normal
execute as @e[tag=head,tag=visual,tag=bloody,scores={age=0..140}] at @s positioned ^ ^0.35 ^ run particle minecraft:block redstone_block ~ ~1.1 ~ 0.01 0 0.01 1 1 normal
execute as @e[tag=leg,tag=visual,tag=bloody,scores={age=0..140}] at @s positioned ^0.25 ^ ^ run particle minecraft:block redstone_block ~ ~1.5 ~ 0.01 0 0.01 1 1 normal
execute as @e[tag=arm,tag=visual,tag=bloody,scores={age=0..140}] at @s positioned ^0.25 ^ ^ run particle minecraft:block redstone_block ~ ~1.5 ~ 0.01 0 0.01 1 1 normal

execute as @e[tag=torso,tag=visual,tag=sandy,scores={age=0..140}] at @s positioned ^0.55 ^ ^ run particle minecraft:block sand ~ ~1.5 ~ 0.01 0 0.01 1 1 normal
execute as @e[tag=head,tag=visual,tag=sandy,scores={age=0..140}] at @s positioned ^ ^0.35 ^ run particle minecraft:block sand ~ ~1.1 ~ 0.01 0 0.01 1 1 normal
execute as @e[tag=leg,tag=visual,tag=sandy,scores={age=0..140}] at @s positioned ^0.25 ^ ^ run particle minecraft:block sand ~ ~1.5 ~ 0.01 0 0.01 1 1 normal
execute as @e[tag=arm,tag=visual,tag=sandy,scores={age=0..140}] at @s positioned ^0.25 ^ ^ run particle minecraft:block sand ~ ~1.5 ~ 0.01 0 0.01 1 1 normal

execute as @e[tag=torso,tag=visual,tag=watery,scores={age=0..140}] at @s positioned ^0.55 ^ ^ run particle minecraft:splash ~ ~1.5 ~ 0.01 0 0.01 1 1 normal
execute as @e[tag=head,tag=visual,tag=watery,scores={age=0..140}] at @s positioned ^ ^0.35 ^ run particle minecraft:splash ~ ~1.1 ~ 0.01 0 0.01 1 1 normal
execute as @e[tag=leg,tag=visual,tag=watery,scores={age=0..140}] at @s positioned ^0.25 ^ ^ run particle minecraft:splash ~ ~1.5 ~ 0.01 0 0.01 1 1 normal
execute as @e[tag=arm,tag=visual,tag=watery,scores={age=0..140}] at @s positioned ^0.25 ^ ^ run particle minecraft:splash ~ ~1.5 ~ 0.01 0 0.01 1 1 normal

## Initalise reset

##hier
execute as @a at @s as @e[type=minecraft:zombie,distance=..20] at @s unless entity @s[scores={nope=1}] unless entity @e[tag=zombie_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:husk,distance=..20] at @s unless entity @s[scores={nope=1}] unless entity @e[tag=husk_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:drowned,distance=..20] at @s unless entity @s[scores={nope=1}] unless entity @e[tag=drowned_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:skeleton,distance=..20] at @s unless entity @e[tag=skeleton_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:wither_skeleton,distance=..20] at @s unless entity @e[tag=wither_skeleton_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:creeper,distance=..20] at @s unless entity @e[tag=creeper_death,distance=..1] run scoreboard players set @s initalise 0

execute as @a at @s as @e[type=minecraft:phantom,distance=..20] at @s unless entity @e[tag=phantom_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:pig,distance=..20] at @s unless entity @e[tag=pig_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:cow,distance=..20] at @s unless entity @e[tag=cow_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:sheep,distance=..20] at @s unless entity @e[tag=sheep_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:chicken,distance=..20] at @s unless entity @e[tag=chicken_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:villager,distance=..20] at @s unless entity @e[tag=villager_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:vindicator,distance=..20] at @s unless entity @e[tag=vindicator_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:evoker,distance=..20] at @s unless entity @e[tag=evoker_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:pillager,distance=..20] at @s unless entity @e[tag=pillager_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:iron_golem,distance=..20] at @s unless entity @e[tag=iron_golem_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:tropical_fish,distance=..20] at @s unless entity @e[tag=tropical_fish_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:dolphin,distance=..20] at @s unless entity @e[tag=dolphin_death,distance=..1] run scoreboard players set @s initalise 0
execute as @a at @s as @e[type=minecraft:salmon,distance=..20] at @s unless entity @e[tag=salmon_death,distance=..1] run scoreboard players set @s initalise 0




##execute as @e[tag=bodypart] at @s positioned ~ ~-1.4 ~ unless entity @e[tag=visual,sort=nearest,limit=1,nbt={ArmorItems:[{},{},{},{Count:1}]},distance=..0.1] run kill @s
##execute as @e[tag=visual] at @s unless entity @s[nbt={ArmorItems:[{},{},{},{Count:1}]}] run kill @s

function deathanimations:correction


execute as @e[tag=visual,nbt={Small:1b}] at @s run tp @s ~ ~0.73 ~

execute as @e[tag=clearItems] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..5]
execute as @e[tag=clearItems] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..5]
execute as @e[tag=clearItems] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bone"}},distance=..5]
execute as @e[tag=clearItems] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}},distance=..5]
execute as @e[tag=clearItems] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bow"}},distance=..5]



## Phantom animation

scoreboard players add @e[tag=explode,type=phantom] age 1

execute as @e[tag=explode,type=phantom] at @s run particle minecraft:large_smoke ~ ~2 ~ 1 0 1 0.8 10 normal
execute as @e[tag=explode,type=phantom,scores={age=24..}] at @s run particle minecraft:explosion ~ ~2 ~ 3 1 3 0.8 10 normal
execute as @e[tag=explode,type=phantom,scores={age=4}] at @s run playsound minecraft:entity.ravager.roar ambient @a ~ ~ ~ 1000 0.4
execute as @e[tag=explode,type=phantom,scores={age=22}] at @s run playsound minecraft:entity.phantom.death ambient @a ~ ~ ~ 1000 0

data merge entity @e[tag=explode,type=phantom,scores={age=2},limit=1,sort=random] {Size:2}
data merge entity @e[tag=explode,type=phantom,scores={age=4},limit=1,sort=random] {Size:3}
data merge entity @e[tag=explode,type=phantom,scores={age=6},limit=1,sort=random] {Size:4}
data merge entity @e[tag=explode,type=phantom,scores={age=8},limit=1,sort=random] {Size:5}
data merge entity @e[tag=explode,type=phantom,scores={age=10},limit=1,sort=random] {Size:6}
data merge entity @e[tag=explode,type=phantom,scores={age=12},limit=1,sort=random] {Size:7}
data merge entity @e[tag=explode,type=phantom,scores={age=14},limit=1,sort=random] {Size:8}
data merge entity @e[tag=explode,type=phantom,scores={age=16},limit=1,sort=random] {Size:9}
data merge entity @e[tag=explode,type=phantom,scores={age=26},limit=1,sort=random] {Tags:[Invisible,explode]}
execute as @e[tag=explode,type=phantom,scores={age=26}] at @s run team join phantom @s
execute as @e[tag=explode,type=phantom,scores={age=26}] at @s run team join phantom @a[distance=..20]

data merge entity @e[tag=explode,type=phantom,scores={age=18},limit=1,sort=random] {Size:10}
data merge entity @e[tag=explode,type=phantom,scores={age=20},limit=1,sort=random] {Size:11}
data merge entity @e[tag=explode,type=phantom,scores={age=22},limit=1,sort=random] {Size:12}
data merge entity @e[tag=explode,type=phantom,scores={age=24},limit=1,sort=random] {Size:13}
data merge entity @e[tag=explode,type=phantom,scores={age=26},limit=1,sort=random] {Size:14}
data merge entity @e[tag=explode,type=phantom,scores={age=28},limit=1,sort=random] {Size:15}

kill @e[tag=explode,type=phantom,scores={age=30..}]

## remove Lag

##unless score @e[type=!player,sort=nearest,limit=1,type=!armor_stand,type=!item,distance=..1] health matches 0..2
execute as @e[tag=death_detection] at @s unless entity @a[distance=..20] unless entity @e[type=area_effect_cloud,distance=..10] run kill @s

execute as @e[tag=bodypart] at @s unless entity @a[distance=..60] run kill @s
execute as @e[tag=visual] at @s unless entity @a[distance=..60] run kill @s

execute as @a at @s store result score global entity_count run execute if entity @e[tag=bodypart]

execute if score global entity_count matches 20.. run scoreboard players add @e[tag=visual,scores={timeout_parts=1..}] timeout_parts 10
execute if score global entity_count matches 20.. run scoreboard players add @e[tag=bodypart,scores={timeout_parts=1..}] timeout_parts 10

##execute as @e at @s if entity @a[distance=..40] store result score @s health run data get entity @s Health


execute as @e[tag=animal_death] at @s run tp @s ~ ~0.15 ~
