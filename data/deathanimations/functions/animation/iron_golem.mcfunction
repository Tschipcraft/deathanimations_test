## by Tschipcraft
execute as @s[tag=iron_golem_death,scores={cooldown=20}] run data merge entity @s {DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:3,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

execute as @s[tag=iron_golem_death,scores={cooldown=41}] run data merge entity @s {Pose:{Head:[10f,0f,0f]}}
execute as @s[tag=iron_golem_death,scores={cooldown=41}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:4,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

execute as @s[tag=iron_golem_death,scores={cooldown=42}] run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute as @s[tag=iron_golem_death,scores={cooldown=42}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:4,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

execute as @s[tag=iron_golem_death,scores={cooldown=43}] run data merge entity @s {Pose:{Head:[30f,0f,0f]}}
execute as @s[tag=iron_golem_death,scores={cooldown=43}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:5,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

execute as @s[tag=iron_golem_death,scores={cooldown=44}] run data merge entity @s {Pose:{Head:[40f,0f,0f]}}
execute as @s[tag=iron_golem_death,scores={cooldown=44}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:5,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

execute as @s[tag=iron_golem_death,scores={cooldown=45}] run data merge entity @s {Pose:{Head:[50f,0f,0f]}}
execute as @s[tag=iron_golem_death,scores={cooldown=45}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:6,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

execute as @s[tag=iron_golem_death,scores={cooldown=46}] run data merge entity @s {Pose:{Head:[60f,0f,0f]}}
execute as @s[tag=iron_golem_death,scores={cooldown=46}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:6,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

execute as @s[tag=iron_golem_death,scores={cooldown=47}] run data merge entity @s {Pose:{Head:[70f,0f,0f]}}
execute as @s[tag=iron_golem_death,scores={cooldown=47}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:7,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

execute as @s[tag=iron_golem_death,scores={cooldown=48}] run data merge entity @s {Pose:{Head:[80f,0f,0f]}}
execute as @s[tag=iron_golem_death,scores={cooldown=48}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:7,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

execute as @s[tag=iron_golem_death,scores={cooldown=49}] run data merge entity @s {Pose:{Head:[90f,0f,0f]}}
execute as @s[tag=iron_golem_death,scores={cooldown=49}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{CustomModelData:8,display:{Name:"{\"text\":\"iron_golem_falling\",\"italic\":false}"}}}]}

execute as @s[tag=iron_golem_death,scores={cooldown=51}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{da_drop:1,CustomModelData:9,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}
execute if score Global enable_pickup matches 1 as @s[tag=iron_golem_death,scores={cooldown=51}] run data merge entity @s {DisabledSlots:4140800,ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{da_drop:1,CustomModelData:9,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}


## sounds
execute as @s[tag=iron_golem_death,scores={cooldown=20}] at @s run playsound minecraft:block.anvil.land neutral @a ~ ~ ~
execute as @s[tag=iron_golem_death,scores={cooldown=50}] at @s run playsound minecraft:block.anvil.land neutral @a ~ ~ ~
