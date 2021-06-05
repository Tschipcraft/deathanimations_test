## by Tschipcrafts

# Arms
execute as @s at @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^0.4 ^ ^0.3 {Small:1b,Tags:[bodypart,arm,straycheck],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^0.4 ^ ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:11,display:{Name:"{\"text\":\"Stray Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,straycheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^-0.4 ^ ^0.3 {Small:1b,Tags:[bodypart,arm,straycheck],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^-0.4 ^ ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:11,display:{Name:"{\"text\":\"Stray Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,straycheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Legs
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.40 ^ ^ {Small:1b,Tags:[bodypart,leg,straybody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.40 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:12,display:{Name:"{\"text\":\"Stray Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,straybody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.40 ^ ^ {Small:1b,Tags:[bodypart,leg,straybody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.40 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:12,display:{Name:"{\"text\":\"Stray Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,straybody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Torso
execute as @s at @s positioned ~ ~0.30 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,straybody,torso],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s positioned ~ ~-0.10 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1,tag:{da_drop:1,CustomModelData:10,display:{Name:"{\"text\":\"Stray Torso\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,straybody,torso],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,straybody,head],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1

# Head
## for 1.15 & before
#execute as @s at @s positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1,tag:{display:{Name:"{\"text\":\"Stray Head\",\"italic\":false}"},SkullOwner:{Id:"644c9bad-958b-43ce-9d2f-199d85be607c",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzhkZGY3NmU1NTVkZDVjNGFhOGEwYTVmYzU4NDUyMGNkNjNkNDg5YzI1M2RlOTY5ZjdmMjJmODVhOWEyZDU2In19fQ=="}]}}}}],NoGravity:1,Tags:[visual,straybody,head],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}

## for 1.16
execute as @s at @s positioned ~ ~0.20 ~ run summon armor_stand ^ ^ ^ {NoGravity:1b,Silent:1b,Invisible:1b,Tags:["visual","straybody","head"],Pose:{Head:[1f,1f,1f]},DisabledSlots:4140800,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Stray Head","italic":false}'},SkullOwner:{Id:[I;1785929880,503663408,-1696403692,-78066405],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmM1MDk3OTE2YmMwNTY1ZDMwNjAxYzBlZWJmZWIyODcyNzdhMzRlODY3YjRlYTQzYzYzODE5ZDUzZTg5ZWRlNyJ9fX0="}]}}}}]}
scoreboard players add @e[tag=visual] correction 1


particle minecraft:block bone_block ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]


## Items
execute as @s run function deathanimations:summon/items

## Special nbt
scoreboard players add @e[type=minecraft:armor_stand,tag=bodypart] da_id 1
scoreboard players add @e[type=minecraft:armor_stand,tag=visual] da_id 1
function deathanimations:summon/special_nbt

##summon area_effect_cloud ~ ~ ~ {Tags:[clearItems],NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:5}

kill @s[type=!player]
