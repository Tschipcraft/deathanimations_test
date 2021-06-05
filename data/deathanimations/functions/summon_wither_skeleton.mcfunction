## by Tschipcraft

# Arms
execute as @s at @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^0.4 ^ ^0.3 {Small:1b,Tags:[bodypart,arm,wither_skeletoncheck],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^0.4 ^ ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:7,display:{Name:"{\"text\":\"Wither Skeleton Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,wither_skeletoncheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^-0.4 ^ ^0.3 {Small:1b,Tags:[bodypart,arm,wither_skeletoncheck],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^-0.4 ^ ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:7,display:{Name:"{\"text\":\"Wither Skeleton Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,wither_skeletoncheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Legs
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.40 ^ ^ {Small:1b,Tags:[bodypart,leg,wither_skeletonbody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.40 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:8,display:{Name:"{\"text\":\"Wither Skeleton Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,wither_skeletonbody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.40 ^ ^ {Small:1b,Tags:[bodypart,leg,wither_skeletonbody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.40 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:8,display:{Name:"{\"text\":\"Wither Skeleton Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,wither_skeletonbody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Torso
execute as @s at @s positioned ~ ~0.30 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,wither_skeletonbody,torso],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.10 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:6,display:{Name:"{\"text\":\"Wither Skeleton Torso\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,wither_skeletonbody,torso],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Head
execute as @s at @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,wither_skeletonbody,head],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1}],NoGravity:1,Tags:[visual,wither_skeletonbody,head],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1


particle minecraft:block obsidian ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]

## Items
execute as @s run function deathanimations:summon/items

## Special nbt
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] da_id 1
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] da_id 1
function deathanimations:summon/special_nbt

kill @s[type=!player]
