## by Tschipcraft
data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1}
execute at @s run tp @s ~ ~-0.3 ~
summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,villagerbody],Silent:1,Invisible:1,DisabledSlots:4144959}
execute at @s run tp @s ~ ~-1.4 ~
execute if score @s Type matches 0 run data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1,tag:{CustomModelData:20,display:{Name:"{\"text\":\"Plain Villager\",\"italic\":false}"}}}]}
execute if score @s Type matches 1 run data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1,tag:{CustomModelData:21,display:{Name:"{\"text\":\"Desert Villager\",\"italic\":false}"}}}]}
execute if score @s Type matches 2 run data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1,tag:{CustomModelData:22,display:{Name:"{\"text\":\"Savanna Villager\",\"italic\":false}"}}}]}
execute if score @s Type matches 3 run data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1,tag:{CustomModelData:23,display:{Name:"{\"text\":\"Snow Villager\",\"italic\":false}"}}}]}
execute if score @s Type matches 4 run data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1,tag:{CustomModelData:24,display:{Name:"{\"text\":\"Taiga Villager\",\"italic\":false}"}}}]}
execute if score @s Type matches 5 run data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1,tag:{CustomModelData:25,display:{Name:"{\"text\":\"Jungle Villager\",\"italic\":false}"}}}]}
execute if score @s Type matches 6 run data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1,tag:{CustomModelData:26,display:{Name:"{\"text\":\"Swamp Villager\",\"italic\":false}"}}}]}

execute if score @s IsSpecial matches 1 run data merge entity @s {Small:1b}
tag @s remove death_detection
tag @s add correct

scoreboard players add @s cooldown 1
execute at @s positioned ~ ~1.4 ~ run scoreboard players add @e[tag=villagerbody,limit=1,sort=nearest] cooldown 1


particle minecraft:block redstone_block ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]

##function deathanimations:summon_soul

##kill @s[type=!player]
