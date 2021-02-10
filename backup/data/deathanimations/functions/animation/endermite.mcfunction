## by Tschipcraft
execute as @e[tag=endermite,scores={cooldown=6}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:chorus_fruit",Count:1b,tag:{CustomModelData:2,display:{Name:"{\"text\":\"Endermite\",\"italic\":false}"}}}],DisabledSlots:4140847}

execute as @e[tag=endermite,scores={cooldown=6}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:chorus_fruit",Count:1b,tag:{CustomModelData:3,display:{Name:"{\"text\":\"Endermite\",\"italic\":false}"}}}],DisabledSlots:4140847}


## sounds
execute as @e[tag=endermite,scores={cooldown=6}] at @s run playsound minecraft:entity.endermite.step hostile @a[scores={blood_local=1}] ~ ~ ~ 100 0.5


## other stuff
execute as @e[tag=endermite,scores={cooldown=6..}] at @s unless entity @s[nbt={ArmorItems:[{},{},{},{Count:1b}]}] if entity @a[scores={blood_local=1},distance=..20] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:chorus_fruit",Count:2b,tag:{CustomModelData:4,display:{Name:"{\"text\":\"Endermite\",\"italic\":false}"}}}],DisabledSlots:4144959}
execute as @a[nbt={Inventory:[{id:"minecraft:chorus_fruit",tag:{CustomModelData:3}}]}] at @s run function deathanimations:replace
execute as @e[tag=endermite,scores={cooldown=6..}] at @s unless entity @s[nbt={ArmorItems:[{},{},{},{Count:1b}]}] if entity @a[scores={blood_local=0},distance=..20] run kill @s
execute as @e[tag=endermite,scores={cooldown=6..}] at @s if entity @a[scores={blood_local=1},distance=..20] unless entity @s[nbt={ArmorItems:[{},{},{},{Count:2b}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:chorus_fruit",Count:1b,tag:{CustomModelData:3,display:{Name:"{\"text\":\"Endermite\",\"italic\":false}"}}}]}
execute as @e[tag=endermite,scores={cooldown=6..}] at @s if entity @a[scores={blood_local=0},distance=..20] unless entity @s[nbt={ArmorItems:[{},{},{},{Count:2b}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:chorus_fruit",Count:1b,tag:{CustomModelData:2,display:{Name:"{\"text\":\"Endermite\",\"italic\":false}"}}}]}

execute as @e[tag=endermite,scores={cooldown=600..}] at @s run tp @s ~ ~-0.001 ~

execute as @e[tag=endermite,scores={cooldown=4..600}] at @s if block ~ ~1 ~ #deathanimations:nonsolid run tp @s ~ ~-1 ~


kill @e[tag=endermite,scores={cooldown=800..}]