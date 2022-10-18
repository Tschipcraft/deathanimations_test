## by Tschipcraft

# Arms
execute as @s at @s if entity @s[scores={OnFire=0}] positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^0.3 ^ ^0.3 {Small:1b,Tags:[bodypart,arm,bloody,zombiecheck],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s if entity @s[scores={OnFire=0}] positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^0.3 ^ ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:52,display:{Name:"{\"text\":\"Snow Zombie Villager Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,bloody,zombiecheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s if entity @s[scores={OnFire=0}] positioned ~ ~0.25 ~ run summon minecraft:armor_stand ^-0.3 ^ ^0.3 {Small:1b,Tags:[bodypart,arm,bloody,zombiecheck],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s if entity @s[scores={OnFire=0}] positioned ~ ~-0.15 ~ run summon minecraft:armor_stand ^-0.3 ^ ^0.3 {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:52,display:{Name:"{\"text\":\"Snow Zombie Villager Arm\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,arm,bloody,zombiecheck],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Legs
execute as @s at @s if entity @s[scores={OnFire=0}] positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^0.15 ^ ^ {Small:1b,Tags:[bodypart,leg,zombiebody,bloody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s if entity @s[scores={OnFire=0}] positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^0.15 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:53,display:{Name:"{\"text\":\"Snow Zombie Villager Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,zombiebody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
execute as @s at @s if entity @s[scores={OnFire=0}] positioned ~ ~0.10 ~ run summon minecraft:armor_stand ^-0.15 ^ ^ {Small:1b,Tags:[bodypart,leg,zombiebody,bloody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s if entity @s[scores={OnFire=0}] positioned ~ ~-0.9 ~ run summon minecraft:armor_stand ^-0.15 ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:53,display:{Name:"{\"text\":\"Snow Zombie Villager Leg\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,leg,zombiebody,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Torso
execute as @s at @s if entity @s[scores={OnFire=0}] positioned ~ ~0.30 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,zombiebody,torso,bloody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s if entity @s[scores={OnFire=0}] positioned ~ ~-0.10 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:51,display:{Name:"{\"text\":\"Snow Zombie Villager Torso\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,zombiebody,torso,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1

# Head
execute as @s at @s if entity @s[scores={OnFire=0}] positioned ~ ~0.50 ~ run summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,zombiebody,head,bloody],Silent:1,Invisible:1,DisabledSlots:4144959}
scoreboard players add @e[tag=bodypart] correction 1
execute as @s at @s if entity @s[scores={OnFire=0}] positioned ~ ~0.20 ~ run summon minecraft:armor_stand ^ ^ ^ {NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1,tag:{da_drop:1,CustomModelData:50,display:{Name:"{\"text\":\"Snow Zombie Villager Head\",\"italic\":false}"}}}],NoGravity:1,Tags:[visual,zombiebody,head,bloody],Pose:{Head:[1f,1f,1f]},Silent:1,Invisible:1,DisabledSlots:4140800}
scoreboard players add @e[tag=visual] correction 1
