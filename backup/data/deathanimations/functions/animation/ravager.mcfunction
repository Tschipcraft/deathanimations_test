## by Tschipcraft
execute as @s[tag=ravager_death,scores={cooldown=20}] run data merge entity @s {DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1,tag:{CustomModelData:2,display:{Name:"{\"text\":\"ravager_falling\",\"italic\":false}"}}}]}

execute as @s[tag=ravager_death,scores={cooldown=30}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1,tag:{CustomModelData:3,display:{Name:"{\"text\":\"ravager_falling\",\"italic\":false}"}}}]}

execute as @s[tag=ravager_death,scores={cooldown=40}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1,tag:{CustomModelData:4,display:{Name:"{\"text\":\"ravager_falling\",\"italic\":false}"}}}]}

execute as @s[tag=ravager_death,scores={cooldown=43}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1,tag:{CustomModelData:5,display:{Name:"{\"text\":\"ravager_falling\",\"italic\":false}"}}}]}

execute as @s[tag=ravager_death,scores={cooldown=47}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1,tag:{CustomModelData:6,display:{Name:"{\"text\":\"ravager_falling\",\"italic\":false}"}}}]}

execute as @s[tag=ravager_death,scores={cooldown=50}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1,tag:{da_drop:1,CustomModelData:7,display:{Name:"{\"text\":\"Ravager\",\"italic\":false}"}}}]}
execute if score Global enable_pickup matches 1 as @s[tag=ravager_death,scores={cooldown=50}] run data merge entity @s {DisabledSlots:4140800,ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1,tag:{da_drop:1,CustomModelData:7,display:{Name:"{\"text\":\"Ravager\",\"italic\":false}"}}}]}

##execute as @s[tag=ravager_death,scores={cooldown=71}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1,tag:{CustomModelData:9,display:{Name:"{\"text\":\"Ravager\",\"italic\":false}"}}}]}

##execute as @s[tag=ravager_death,scores={cooldown=61..}] at @s if block ^1.3 ^1.1 ^2 #deathanimations:nonsolid if block ^-1.3 ^1.1 ^2 #deathanimations:nonsolid run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1,tag:{CustomModelData:9,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}

##execute as @s[tag=ravager_death,scores={cooldown=51..}] at @s unless block ^1.3 ^1.1 ^2 #deathanimations:nonsolid run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1,tag:{CustomModelData:10,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}
##execute as @s[tag=ravager_death,scores={cooldown=51..}] at @s unless block ^-1.3 ^1.1 ^2 #deathanimations:nonsolid run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1,tag:{CustomModelData:11,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}
##execute as @s[tag=ravager_death,scores={cooldown=51..}] at @s unless block ^-1.3 ^1.1 ^2 #deathanimations:nonsolid unless block ^1.3 ^1.1 ^2 #deathanimations:nonsolid run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1,tag:{CustomModelData:12,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}

## sounds
execute as @s[tag=ravager_death,scores={cooldown=20}] at @s run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~
execute as @s[tag=ravager_death,scores={cooldown=30}] at @s run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~
execute as @s[tag=ravager_death,scores={cooldown=40}] at @s run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~
execute as @s[tag=ravager_death,scores={cooldown=47}] at @s run playsound minecraft:entity.ravager.stunned hostile @a ~ ~ ~ 100 0.5
execute as @s[tag=ravager_death,scores={cooldown=50}] at @s run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 100 0.5
