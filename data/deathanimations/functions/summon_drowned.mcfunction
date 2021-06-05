## by Tschipcraft

# Arms
execute as @s at @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^0.3 ^ ^0.3 {Small:1b,Tags:[bodypart,arm,watery,drownedcheck],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^0.3 ^ ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:16,display:{Name:"{\"text\":\"Drowned Right Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,watery,drownedcheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^-0.3 ^ ^0.3 {Small:1b,Tags:[bodypart,arm,watery,drownedcheck],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^-0.3 ^ ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:17,display:{Name:"{\"text\":\"Drowned Left Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,watery,drownedcheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Legs
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.15 ^ ^ {Small:1b,Tags:[bodypart,leg,drownedbody,watery],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.15 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:18,display:{Name:"{\"text\":\"Drowned Right Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,drownedbody,watery],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.15 ^ ^ {Small:1b,Tags:[bodypart,leg,drownedbody,watery],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.15 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:19,display:{Name:"{\"text\":\"Drowned Left Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,drownedbody,watery],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Torso
execute as @s at @s positioned ~ ~0.30 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,drownedbody,torso,watery],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.10 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:15,display:{Name:"{\"text\":\"Drowned Torso\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,drownedbody,torso,watery],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Head
execute as @s at @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,drownedbody,head,watery],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
##execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:20,display:{Name:"{\"text\":\"Drowned Head\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,drownedbody,head,watery],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}

## 1.15 & before:
#execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1,tag:{display:{Name:"{\"text\":\"Drowned Head\",\"italic\":false}"},SkullOwner:{Id:"2f169660-61be-46bd-acb5-1abef9fe5731",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNmN2NjZjYxZGJjM2Y5ZmU5YTYzMzNjZGUwYzBlMTQzOTllYjJlZWE3MWQzNGNmMjIzYjNhY2UyMjA1MSJ9fX0="}]}}}}],NoGravity:1,Tags:[visual,drownedbody,head,watery],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}

## 1.16 & after:
execute as @s at @s positioned ~ ~0.20 ~ run summon armor_stand ^ ^ ^ {NoGravity:1b,Silent:1,Invisible:1b,Tags:["visual","drownedbody","head","watery"],Pose:{Head:[1f,1f,1f]},DisabledSlots:4140800,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Drowned Head","italic":false}'},SkullOwner:{Id:[I;790009440,1639859901,-1397417282,-100772047],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNmN2NjZjYxZGJjM2Y5ZmU5YTYzMzNjZGUwYzBlMTQzOTllYjJlZWE3MWQzNGNmMjIzYjNhY2UyMjA1MSJ9fX0="}]}}}}]}
scoreboard players add @e[tag=visual] correction 1


particle minecraft:splash ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]

execute as @s at @s if entity @s[scores={OnFire=1}] run particle minecraft:block magma_block ~ ~1 ~ 0.2 0.4 0.2 0 300 normal
execute as @s at @s if entity @s[scores={OnFire=1}] run particle minecraft:falling_dust obsidian ~ ~1 ~ 0.2 0.5 0.2 0 250 normal
execute as @s at @s if entity @s[scores={OnFire=1}] run playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~


## Items
execute as @s run function deathanimations:summon/items

## Special nbt
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] da_id 1
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] da_id 1
function deathanimations:summon/special_nbt

##function deathanimations:summon_soul

summon area_effect_cloud ~ ~ ~ {Tags:[clearItems],NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:5}

kill @s[type=!player]
