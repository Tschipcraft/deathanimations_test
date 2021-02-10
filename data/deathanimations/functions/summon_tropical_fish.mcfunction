## by Tschipcraft
summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,tropical_fishbody,fish],Silent:1,Invisible:1b,DisabledSlots:4144959}
##execute at @s run tp @s ~ ~-1.4 ~
summon tropical_fish ~ ~ ~ {Tags:[tropical_fishbody,fish,visual,exclude],NoAI:1b,Invulnerable:1b,DeathTime:19s,DeathLootTable:"minecraft:empty"}


execute store result score @e[type=tropical_fish,tag=tropical_fishbody,tag=fish,sort=nearest,limit=1] Variant run scoreboard players get @s Variant
execute as @e[type=tropical_fish,tag=tropical_fishbody,sort=nearest,limit=1] at @s store result entity @s Variant long 1 run scoreboard players get @s Variant
##scoreboard players add @s cooldown 1

##execute at @s positioned ~ ~1.4 ~ run scoreboard players add @e[tag=pigbody,limit=1,sort=nearest] cooldown 1

team join NoName @e[tag=fish]

##particle minecraft:block redstone_block ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]

##function deathanimations:summon_soul

kill @s[type=!player]
