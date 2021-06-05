## by Tschipcraft

# Arms
execute as @s at @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^0.3 ^ ^0.3 {Small:1b,Tags:[bodypart,arm,sandy,huskcheck],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^0.3 ^ ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:7,display:{Name:"{\"text\":\"Husk Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,sandy,huskcheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^-0.3 ^ ^0.3 {Small:1b,Tags:[bodypart,arm,sandy,huskcheck],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1

# Legs
execute as @s at @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^-0.3 ^ ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:7,display:{Name:"{\"text\":\"Husk Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,sandy,huskcheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.15 ^ ^ {Small:1b,Tags:[bodypart,leg,huskbody,sandy],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.15 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:8,display:{Name:"{\"text\":\"Husk Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,huskbody,sandy],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.15 ^ ^ {Small:1b,Tags:[bodypart,leg,huskbody,sandy],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.15 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:8,display:{Name:"{\"text\":\"Husk Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,huskbody,sandy],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Torso
execute as @s at @s positioned ~ ~0.30 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,huskbody,torso,sandy],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.10 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:6,display:{Name:"{\"text\":\"Husk Torso\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,huskbody,torso,sandy],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Head
execute as @s at @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,huskbody,head,sandy],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1

## 1.15 & before:
#execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1,tag:{display:{Name:"{\"text\":\"Husk Head\",\"italic\":false}"},SkullOwner:{Id:"1abe147b-ea7a-470c-8e74-16ce8fed6cb6",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDY3NGM2M2M4ZGI1ZjRjYTYyOGQ2OWEzYjFmOGEzNmUyOWQ4ZmQ3NzVlMWE2YmRiNmNhYmI0YmU0ZGIxMjEifX19"}]}}}}],NoGravity:1,Tags:[visual,huskbody,head,sandy],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}

## 1.16 & after:
execute as @s at @s positioned ~ ~0.20 ~ run summon armor_stand ^ ^ ^ {NoGravity:1b,Silent:1,Invisible:1b,Tags:["visual","huskbody","head","sandy"],Pose:{Head:[1f,1f,1f]},DisabledSlots:4140800,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Husk Head","italic":false}'},SkullOwner:{Id:[I;448664699,-361085172,-1904994610,-1880265546],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDY3NGM2M2M4ZGI1ZjRjYTYyOGQ2OWEzYjFmOGEzNmUyOWQ4ZmQ3NzVlMWE2YmRiNmNhYmI0YmU0ZGIxMjEifX19"}]}}}}]}
scoreboard players add @e[tag=visual] correction 1


particle minecraft:block sand ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]

execute as @s at @s if entity @s[scores={OnFire=1}] run particle minecraft:block magma_block ~ ~1 ~ 0.2 0.4 0.2 0 300 normal
execute as @s at @s if entity @s[scores={OnFire=1}] run particle minecraft:falling_dust obsidian ~ ~1 ~ 0.2 0.5 0.2 0 250 normal
execute as @s at @s if entity @s[scores={OnFire=1}] run playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~

execute as @s run function deathanimations:summon/items

## Special nbt
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] da_id 1
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] da_id 1
function deathanimations:summon/special_nbt

##function deathanimations:summon_soul

kill @s[type=!player]
