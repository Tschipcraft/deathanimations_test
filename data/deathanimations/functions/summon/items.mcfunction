## by Tschipcraft; needs rewrite

## Head
execute as @s at @s positioned ~ ~0.60 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,head,armor,init],Silent:1,Invisible:1,DisabledSlots:4144959}
execute as @s at @s positioned ~ ~0.30 ~ run summon minecraft:armor_stand ^ ^ ^ {ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1,tag:{CustomModelData:1b}}],NoGravity:1,Tags:[visual,head,armor,init],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}


data modify entity @e[type=minecraft:armor_stand,tag=visual,tag=init,limit=1] ArmorItems[3] set from entity @s[type=minecraft:item] Item.tag.ArmorItems[3]
data modify entity @e[type=minecraft:armor_stand,tag=visual,tag=init,limit=1] ArmorItems[3] set from entity @s[type=minecraft:player] Inventory[{Slot:103b}]

# Remove noncustom head
#Don't work with current setup
#execute if data entity @s Item.tag.da_custom_head run kill @e[type=minecraft:armor_stand,tag=visual,tag=head,scores={correction=2..7},limit=1]
execute if data entity @s Item.tag.da_custom_head as @e[type=minecraft:armor_stand,tag=visual,tag=init,limit=1] run tag @s remove armor
execute if data entity @s Item.tag.da_custom_head as @e[type=minecraft:armor_stand,tag=bodypart,tag=init,limit=1] run tag @s remove armor
execute if data entity @s Item.tag.da_custom_head unless data entity @s {Item:{tag:{da_entity:skeleton}}} unless data entity @s {Item:{tag:{da_entity:wither_skeleton}}} unless data entity @s {Item:{tag:{da_entity:husk}}} unless data entity @s {Item:{tag:{da_entity:drowned}}} as @e[type=minecraft:armor_stand,tag=visual,tag=init,limit=1] run tag @s add bloody
execute if data entity @s Item.tag.da_custom_head if data entity @s {Item:{tag:{da_entity:husk}}} as @e[type=minecraft:armor_stand,tag=visual,tag=init,limit=1] run tag @s add sandy
execute if data entity @s Item.tag.da_custom_head if data entity @s {Item:{tag:{da_entity:drowned}}} as @e[type=minecraft:armor_stand,tag=visual,tag=init,limit=1] run tag @s add watery

function deathanimations:general/assign_id

## Chestplate
execute as @s at @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^ ^ ^0.1 {Small:1b,Tags:[bodypart,chestplate,armor,init],Silent:1,Invisible:1,DisabledSlots:4144959}
execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^ ^ ^0.1 {ArmorItems:[{},{},{id:"barrier",Count:1b,tag:{CustomModelData:1b}},{}],NoGravity:1,Tags:[visual,chestplate,armor,init],Pose:{Body:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}

data modify entity @e[type=minecraft:armor_stand,tag=visual,tag=init,limit=1] ArmorItems[2] set from entity @s[type=minecraft:item] Item.tag.ArmorItems[2]
data modify entity @e[type=minecraft:armor_stand,tag=visual,tag=init,limit=1] ArmorItems[2] set from entity @s[type=minecraft:player] Inventory[{Slot:102b}]

function deathanimations:general/assign_id


## Items
# Mainhand
execute as @s at @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^-0.2 ^-0.5 ^0.3 {Small:1b,Tags:[bodypart,skeletonbody,item,init],Silent:1,Invisible:1,DisabledSlots:4144959}
execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^-0.2 ^ ^0.3 {Pose:{RightArm:[1f,1f,-92f]},ShowArms:1,HandItems:[{id:"minecraft:barrier",Count:1,tag:{Damage:131,CustomModelData:1b}}],NoGravity:1,Tags:[visual,skeletonbody,item,init],Silent:1,Invisible:1,DisabledSlots:4136478}

data modify entity @e[type=minecraft:armor_stand,tag=visual,tag=item,tag=init,limit=1] HandItems[0] set from entity @s[type=minecraft:item] Item.tag.HandItems[0]
data modify entity @e[type=minecraft:armor_stand,tag=visual,tag=item,tag=init,limit=1] HandItems[0] set from entity @s[type=minecraft:player] SelectedItem

execute as @e[type=minecraft:armor_stand,tag=visual,tag=item,tag=init] if entity @s[nbt={HandItems:[{id:"minecraft:bow"}]}] run tag @s add bow
execute as @e[type=minecraft:armor_stand,tag=visual,tag=item,tag=init] unless entity @s[nbt={HandItems:[{id:"#deathanimations:normal_rot"}]}] run tag @s add normal_rot

function deathanimations:general/assign_id

# Offhand
execute as @s at @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^0.2 ^-0.5 ^0.3 {Small:1b,Tags:[bodypart,skeletonbody,item,init],Silent:1,Invisible:1,DisabledSlots:4144959}
execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^0.2 ^ ^0.3 {Pose:{RightArm:[1f,1f,-92f]},ShowArms:1,HandItems:[{id:"minecraft:barrier",Count:1,tag:{Damage:131,CustomModelData:1b}}],NoGravity:1,Tags:[visual,skeletonbody,item,init],Silent:1,Invisible:1,DisabledSlots:4136478}

data modify entity @e[type=minecraft:armor_stand,tag=visual,tag=item,tag=init,limit=1] HandItems[0] set from entity @s[type=minecraft:item] Item.tag.HandItems[1]
data modify entity @e[type=minecraft:armor_stand,tag=visual,tag=item,tag=init,limit=1] HandItems[0] set from entity @s[type=minecraft:player] Inventory[{Slot:-106b}]

execute as @e[type=minecraft:armor_stand,tag=visual,tag=item,tag=init] if entity @s[nbt={HandItems:[{id:"minecraft:bow"}]}] run tag @s add bow
execute as @e[type=minecraft:armor_stand,tag=visual,tag=item,tag=init] unless entity @s[nbt={HandItems:[{id:"#deathanimations:normal_rot"}]}] run tag @s add normal_rot

function deathanimations:general/assign_id



#execute as @e[type=minecraft:armor_stand,tag=visual,tag=item] if entity @s[nbt={HandItems:[{id:"minecraft:barrier"}]}] run kill @s
#execute as @e[type=minecraft:armor_stand,tag=visual,tag=item] unless data entity @s HandItems[0].id run kill @s
#execute as @e[type=minecraft:armor_stand,tag=visual,tag=!item] unless data entity @s ArmorItems[3].id unless data entity @s ArmorItems[2].id run kill @s
#execute as @e[type=minecraft:armor_stand,tag=visual] if entity @s[nbt={ArmorItems:[{id:"minecraft:barrier"}]}] run kill @s
