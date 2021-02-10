
summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,salmonbody,fish],Silent:1,Invisible:1,DisabledSlots:4144959}
##execute at @s run tp @s ~ ~-1.4 ~
summon salmon ~ ~ ~ {Tags:[salmonbody,fish,visual,exclude],NoAI:1b,Invulnerable:1b,Silent:1b,DeathTime:19s,DeathLootTable:"minecraft:empty"}

team join NoName @e[tag=fish]


##particle minecraft:block redstone_block ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]

##function deathanimations:summon_soul

kill @s[type=!player]