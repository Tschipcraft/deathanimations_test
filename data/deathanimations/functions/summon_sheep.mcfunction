## by Tschipcraft

data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1}
execute at @s run tp @s ~ ~-0.3 ~
summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,sheepbody,lame_bodypart],Silent:1,Invisible:1,DisabledSlots:4144959}
execute at @s run tp @s ~ ~-1.4 ~
data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1,tag:{CustomModelData:11,display:{Name:"{\"text\":\"Sheep\",\"italic\":false}"}}}]}
scoreboard players add @s cooldown 1
execute at @s positioned ~ ~1.4 ~ run scoreboard players add @e[tag=sheepbody,limit=1,sort=nearest] cooldown 1

execute if score @s IsSpecial matches 1 run data merge entity @s {Small:1b}
tag @s remove death_detection
tag @s add correct
tag @s add lame_visual

scoreboard players add @e[type=#deathanimations:marker_entities,tag=lame_visual] lame_correction 1
scoreboard players add @e[type=#deathanimations:marker_entities,tag=lame_bodypart] lame_correction 1

particle minecraft:block redstone_block ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]

loot spawn ~ ~ ~ loot minecraft:entities/sheep/white

##function deathanimations:summon_soul

##kill @s[type=!player]
