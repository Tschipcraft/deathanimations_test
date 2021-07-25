## by Tschipcraft


## Head
execute as @s at @s positioned ~ ~0.60 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,skeletonbody,head,armor],Silent:1,Invisible:1,DisabledSlots:4144959}
#execute as @s at @s positioned ~ ~0.60 ~ run summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:wooden_hoe",Count:1b},Tags:[bodypart,skeletonbody,head]}
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] correction 1
execute as @s at @s positioned ~ ~0.30 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1,tag:{CustomModelData:1b}}],NoGravity:1,Tags:[visual,skeletonbody,head,armor],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] correction 1

data modify entity @e[tag=visual,scores={correction=1},limit=1] ArmorItems[3] set from entity @s[type=!player] Item.tag.ArmorItems[3]
#data modify entity @e[tag=visual,scores={correction=1},limit=1] ArmorItems[3] set from entity @s[type=!player] ArmorItems[0].tag.BlockEntityTag.Items[3]
data modify entity @e[type=minecraft:armor_stand,tag=visual,scores={correction=1},limit=1] ArmorItems[3] set from entity @s[type=player] Inventory[{Slot:103b}]

execute if data entity @s Item.tag.da_custom_head run kill @e[type=minecraft:armor_stand,tag=visual,tag=head,scores={correction=2..7},limit=1]
execute if data entity @s Item.tag.da_custom_head as @e[tag=visual,scores={correction=1},limit=1] run tag @s remove armor
execute if data entity @s Item.tag.da_custom_head as @e[tag=bodypart,scores={correction=1},limit=1] run tag @s remove armor
execute if data entity @s Item.tag.da_custom_head unless data entity @s {Item:{tag:{da_entity:skeleton}}} unless data entity @s {Item:{tag:{da_entity:wither_skeleton}}} unless data entity @s {Item:{tag:{da_entity:husk}}} unless data entity @s {Item:{tag:{da_entity:drowned}}} as @e[tag=visual,scores={correction=1},limit=1] run tag @s add bloody
execute if data entity @s Item.tag.da_custom_head if data entity @s {Item:{tag:{da_entity:husk}}} as @e[tag=visual,scores={correction=1},limit=1] run tag @s add sandy
execute if data entity @s Item.tag.da_custom_head if data entity @s {Item:{tag:{da_entity:drowned}}} as @e[tag=visual,scores={correction=1},limit=1] run tag @s add watery

## chestplate
execute as @s at @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^ ^ ^0.1 {Small:1b,Tags:[bodypart,chestplate,armor],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^ ^ ^0.1 {NoAI:1,ArmorItems:[{},{},{id:"barrier",Count:1b,tag:{CustomModelData:1b}},{}],NoGravity:1,Tags:[visual,chestplate,armor],Pose:{Body:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

data modify entity @e[tag=visual,scores={correction=1},limit=1] ArmorItems[2] set from entity @s[type=!player] Item.tag.ArmorItems[2]
#data modify entity @e[tag=visual,scores={correction=1},limit=1] ArmorItems[2] set from entity @s[type=!player] ArmorItems[0].tag.BlockEntityTag.Items[2]
data modify entity @e[type=minecraft:armor_stand,tag=visual,scores={correction=1},limit=1] ArmorItems[2] set from entity @s[type=player] Inventory[{Slot:102b}]



## Items
execute as @s at @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^-0.2 ^-0.5 ^0.3 {Small:1b,Tags:[bodypart,wither_skeletonbody,item],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^-0.2 ^ ^0.3 {Pose:{RightArm:[1f,1f,-92f]},ShowArms:1,NoAI:1,HandItems:[{id:"minecraft:barrier",Count:1,tag:{Damage:131,CustomModelData:1b}}],NoGravity:1,Tags:[visual,wither_skeletonbody,item],Silent:1,Invisible:1,DisabledSlots:4136478}
scoreboard players add @e[tag=visual] correction 1

data modify entity @e[tag=visual,tag=item,scores={correction=1},limit=1] HandItems[0] set from entity @s[type=!player] Item.tag.HandItems[0]
#data modify entity @e[tag=visual,tag=item,scores={correction=1},limit=1] HandItems[0] set from entity @s[type=!player] ArmorItems[0].tag.BlockEntityTag.Items[4]
data modify entity @e[tag=visual,tag=item,scores={correction=1},limit=1] HandItems[0] set from entity @s[type=player] SelectedItem

execute as @e[type=minecraft:armor_stand,tag=visual,tag=item,scores={correction=1}] if entity @s[nbt={HandItems:[{id:"minecraft:bow"}]}] run tag @s add bow
execute as @e[type=minecraft:armor_stand,tag=visual,tag=item,scores={correction=1}] unless entity @s[nbt={HandItems:[{id:"#deathanimations:normal_rot"}]}] run tag @s add normal_rot


execute as @s at @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^0.2 ^-0.5 ^0.3 {Small:1b,Tags:[bodypart,wither_skeletonbody,item],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^0.2 ^ ^0.3 {Pose:{RightArm:[1f,1f,-92f]},ShowArms:1,NoAI:1,HandItems:[{id:"minecraft:barrier",Count:1,tag:{Damage:131,CustomModelData:1b}}],NoGravity:1,Tags:[visual,wither_skeletonbody,item],Silent:1,Invisible:1,DisabledSlots:4136478}
scoreboard players add @e[tag=visual] correction 1

data modify entity @e[tag=visual,tag=item,scores={correction=1},limit=1] HandItems[0] set from entity @s[type=!player] Item.tag.HandItems[1]
#data modify entity @e[tag=visual,tag=item,scores={correction=1},limit=1] HandItems[0] set from entity @s[type=!player] ArmorItems[0].tag.BlockEntityTag.Items[5]
data modify entity @e[tag=visual,tag=item,scores={correction=1},limit=1] HandItems[0] set from entity @s[type=player] Inventory[{Slot:-106b}]

execute as @e[tag=visual,tag=item,scores={correction=1}] if entity @s[nbt={HandItems:[{id:"minecraft:bow"}]}] run tag @s add bow
execute as @e[tag=visual,tag=item,scores={correction=1}] unless entity @s[nbt={HandItems:[{id:"#deathanimations:normal_rot"}]}] run tag @s add normal_rot




execute as @e[tag=visual,tag=item] if entity @s[nbt={HandItems:[{id:"minecraft:barrier"}]}] run kill @s
execute as @e[tag=visual,tag=item] unless data entity @s HandItems[0].id run kill @s
execute as @e[tag=visual,tag=!item] unless data entity @s ArmorItems[3].id unless data entity @s ArmorItems[2].id run kill @s
execute as @e[tag=visual] if entity @s[nbt={ArmorItems:[{id:"minecraft:barrier"}]}] run kill @s
