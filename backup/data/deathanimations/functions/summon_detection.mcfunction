execute as @s[type=zombie] at @s run function deathanimations:detection/zombie

execute as @s[type=zombie_villager] at @s run function deathanimations:detection/zombie_villager

execute as @s[type=husk] at @s run function deathanimations:detection/husk

execute as @s[type=drowned] at @s run function deathanimations:detection/drowned

execute as @s[type=minecraft:skeleton] at @s run function deathanimations:detection/skeleton

execute as @s[type=minecraft:stray] at @s run function deathanimations:detection/stray

execute as @s[type=minecraft:wither_skeleton] at @s run function deathanimations:detection/wither_skeleton

execute as @s[type=minecraft:creeper] at @s run function deathanimations:detection/creeper

execute as @s[type=minecraft:spider] at @s run function deathanimations:detection/spider

execute as @s[type=minecraft:cave_spider] at @s run function deathanimations:detection/cave_spider

execute as @s[type=minecraft:phantom] at @s run function deathanimations:detection/phantom

execute as @s[type=minecraft:pig] at @s run function deathanimations:detection/pig

execute as @s[type=minecraft:cow] at @s run function deathanimations:detection/cow

execute as @s[type=minecraft:sheep] at @s run function deathanimations:detection/sheep

execute as @s[type=minecraft:chicken] at @s run function deathanimations:detection/chicken

execute as @s[type=minecraft:villager] at @s run function deathanimations:detection/villager

execute as @s[type=minecraft:vindicator] at @s run function deathanimations:detection/vindicator

execute as @s[type=minecraft:evoker] at @s run function deathanimations:detection/evoker

execute as @s[type=minecraft:pillager] at @s run function deathanimations:detection/pillager

execute as @s[type=minecraft:iron_golem] at @s run function deathanimations:detection/iron_golem

execute as @s[type=minecraft:ravager] at @s run function deathanimations:detection/ravager

##execute as @s[type=tropical_fish] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[tropical_fish_death,death_detection]}
##execute as @s[type=tropical_fish] run scoreboard players set @s initalise 0
##execute as @s[type=tropical_fish] run scoreboard players add @e[type=tropical_fish] initalise 1
##execute as @s[type=tropical_fish] run scoreboard players add @e[tag=tropical_fish_death] initalise 1
##execute as @s[type=tropical_fish] run data merge entity @s {DeathTime:19s}

##execute as @s[type=dolphin] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[dolphin_death,death_detection]}
##execute as @s[type=dolphin] run scoreboard players add @e[type=dolphin] initalise 1
##execute as @s[type=dolphin] run scoreboard players add @e[tag=dolphin_death] initalise 1
##execute as @s[type=dolphin] run data merge entity @s {DeathTime:19s}

##execute as @s[type=salmon] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Silent:1,Invisible:1,Marker:1,NoGravity:1,Tags:[salmon_death,death_detection]}
##execute as @s[type=salmon] run scoreboard players set @s initalise 0
##execute as @s[type=salmon] run scoreboard players add @e[type=salmon] initalise 1
##execute as @s[type=salmon] run scoreboard players add @e[tag=salmon_death] initalise 1
##execute as @s[type=salmon] run data merge entity @s {DeathTime:19s}

execute as @s[type=minecraft:endermite] at @s run function deathanimations:detection/endermite
