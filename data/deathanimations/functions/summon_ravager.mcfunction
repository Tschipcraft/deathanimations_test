## by Tschipcraft
data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1,DisabledSlots:4144959}
execute at @s run tp @s ~ ~-0.3 ~
summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,ravagerbody,ravager,lame_bodypart],Silent:1,Invisible:1,DisabledSlots:4144959}
execute at @s run tp @s ~ ~-1.0 ~
data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1,tag:{CustomModelData:1,display:{Name:"{\"text\":\"ravager\",\"italic\":false}"}}}]}
scoreboard players add @s cooldown 1
execute at @s positioned ~ ~1.4 ~ run scoreboard players add @e[tag=ravagerbody,limit=1,sort=nearest] cooldown 1

tag @s remove death_detection
tag @s add d_a_p
tag @s add lame_visual
scoreboard players add @e[type=#deathanimations:marker_entities,tag=lame_visual] lame_correction 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=lame_bodypart] lame_correction 1


particle minecraft:block redstone_block ~ ~ ~ 0.3 0.3 0.3 1 30 normal @a[scores={blood_local=1}]

execute if score Global enable_pickup matches 1 run loot spawn ~ ~ ~ loot minecraft:entities/ravager

##function deathanimations:summon_soul

##kill @s[type=!player]
