## by Tschipcraft

execute if entity @s[tag=custom_head] run tag @e[tag=death_detection,scores={initalise=1},limit=1] add custom_head

data modify entity @e[tag=death_detection,scores={initalise=1},limit=1] ArmorItems[0] merge value {id:"minecraft:black_shulker_box",Count:1b,tag:{BlockEntityTag:{Items:[{Slot:0b,id:"minecraft:barrier",Count:1b},{Slot:1b,id:"minecraft:barrier",Count:1b},{Slot:2b,id:"minecraft:barrier",Count:1b},{Slot:3b,id:"minecraft:barrier",Count:1b},{Slot:4b,id:"minecraft:barrier",Count:1b},{Slot:5b,id:"minecraft:barrier",Count:1b}]}}}

data modify entity @e[tag=death_detection,scores={initalise=1},limit=1] ArmorItems[0].tag.BlockEntityTag.Items[0] merge from entity @s ArmorItems[0]
data modify entity @e[tag=death_detection,scores={initalise=1},limit=1] ArmorItems[0].tag.BlockEntityTag.Items[1] merge from entity @s ArmorItems[1]
data modify entity @e[tag=death_detection,scores={initalise=1},limit=1] ArmorItems[0].tag.BlockEntityTag.Items[2] merge from entity @s ArmorItems[2]
data modify entity @e[tag=death_detection,scores={initalise=1},limit=1] ArmorItems[0].tag.BlockEntityTag.Items[3] merge from entity @s ArmorItems[3]
data modify entity @e[tag=death_detection,scores={initalise=1},limit=1] ArmorItems[0].tag.BlockEntityTag.Items[4] merge from entity @s HandItems[0]
data modify entity @e[tag=death_detection,scores={initalise=1},limit=1] ArmorItems[0].tag.BlockEntityTag.Items[5] merge from entity @s HandItems[1]
