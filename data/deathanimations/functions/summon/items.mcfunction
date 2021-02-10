## by Tschipcraft


execute as @s at @s positioned ~ ~0.60 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,skeletonbody,head,armor],Silent:1,Invisible:1,DisabledSlots:4144959}
##execute as @s at @s positioned ~ ~0.60 ~ run summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:wooden_hoe",Count:1b},Tags:[bodypart,skeletonbody,head]}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~0.30 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1}],NoGravity:1,Tags:[visual,skeletonbody,head,armor],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

data modify entity @e[tag=visual,scores={correction=1},limit=1] ArmorItems[3] set from entity @s ArmorItems[0]

execute as @s at @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^ ^ ^0.1 {Small:1b,Tags:[bodypart,chestplate,armor],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^ ^ ^0.1 {NoAI:1,ArmorItems:[{},{},{id:"",Count:1b},{}],NoGravity:1,Tags:[visual,chestplate,armor],Pose:{Body:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

data modify entity @e[tag=visual,tag=chestplate,scores={correction=1},limit=1] ArmorItems[2] set from entity @s ArmorItems[1]
