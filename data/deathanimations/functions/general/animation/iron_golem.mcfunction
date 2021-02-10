## by Tschipcraft

scoreboard players set @s b_test 0
execute as @s[scores={cooldown=..20}] at @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=random,distance=..3] if score @s lame_correction = @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=nearest,limit=1] lame_correction run function deathanimations:visual_correction/iron_golem/0
execute as @s[scores={cooldown=20..}] at @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=random,distance=..3] if score @s lame_correction = @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=nearest,limit=1] lame_correction run function deathanimations:visual_correction/iron_golem/1

execute as @s[scores={b_test=0}] at @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=random,distance=..5] if score @s lame_correction = @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=nearest,limit=1] lame_correction run function deathanimations:visual_correction/found
execute as @s[scores={b_test=0}] at @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=random,distance=..50] if score @s lame_correction = @e[type=#deathanimations:marker_entities,tag=lame_bodypart,sort=nearest,limit=1] lame_correction run function deathanimations:visual_correction/found


execute as @s[scores={cooldown=..53}] run function deathanimations:animation/iron_golem

scoreboard players add @s[scores={cooldown=1..}] cooldown 1

execute as @s[scores={cooldown=51..}] unless entity @s[nbt={ArmorItems:[{},{},{},{Count:1b}]}] run kill @s

execute as @s[scores={cooldown=51..}] positioned ~ ~1.4 ~ if block ^1.3 ^ ^2 #deathanimations:nonsolid if block ^-1.3 ^ ^2 #deathanimations:nonsolid run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{da_drop:1,CustomModelData:9,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}

execute as @s[scores={cooldown=51..500}] positioned ~ ~1.4 ~ unless block ^1.3 ^ ^2 #deathanimations:nonsolid run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{da_drop:1,CustomModelData:10,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}
execute as @s[scores={cooldown=51..500}] positioned ~ ~1.4 ~ unless block ^-1.3 ^ ^2 #deathanimations:nonsolid run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{da_drop:1,CustomModelData:11,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}
execute as @s[scores={cooldown=51..500}] positioned ~ ~1.4 ~ unless block ^-1.3 ^ ^2 #deathanimations:nonsolid unless block ^1.3 ^ ^2 #deathanimations:nonsolid run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1,tag:{da_drop:1,CustomModelData:12,display:{Name:"{\"text\":\"Iron Golem\",\"italic\":false}"}}}]}
kill @s[scores={cooldown=1000..}]
