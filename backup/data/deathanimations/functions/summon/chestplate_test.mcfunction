## by Tschipcraft

execute as @s at @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^ ^ ^0.1 {Small:1b,Tags:[bodypart,chestplate,armor],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^ ^ ^0.1 {NoAI:1,ArmorItems:[{},{},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_chestplate",Count:1b}],NoGravity:1,Tags:[visual,chestplate,armor],Pose:{Body:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
