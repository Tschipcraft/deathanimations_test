## by Tschipcraft
data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1}
execute at @s run tp @s ~ ~-0.3 ~
summon minecraft:armor_stand ^ ^ ^ {Small:1b,Tags:[bodypart,vindicatorbody],Silent:1,Invisible:1,DisabledSlots:4144959}
execute at @s run tp @s ~ ~-1.4 ~
data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0b,Marker:0,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1,tag:{CustomModelData:18,display:{Name:"{\"text\":\"Vindicator\",\"italic\":false}"}}}]}
scoreboard players add @s cooldown 1
execute at @s positioned ~ ~1.4 ~ run scoreboard players add @e[tag=vindicatorbody,limit=1,sort=nearest] cooldown 1

tag @s remove death_detection

particle minecraft:block redstone_block ~ ~ ~ 0 0.3 0 1 100 normal @a[scores={blood_local=1}]

loot spawn ~ ~ ~ loot minecraft:entities/vindicator

##function deathanimations:summon_soul

##kill @s[type=!player]
