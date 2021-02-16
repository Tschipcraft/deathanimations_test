## by Tschipcraft

execute at @s align y run tp @s ~ ~-1.4 ~
summon armor_stand ~ ~-2.8 ~ {Tags:[endermite],Pose:{Head:[0f,0f,0f]},NoGravity:1b,Silent:1,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:chorus_fruit",Count:1b,tag:{CustomModelData:1,display:{Name:"{\"text\":\"Endermite\",\"italic\":false}"}}}],DisabledSlots:4140847}

tp @e[tag=endermite,sort=nearest,limit=1] @s

particle minecraft:block chorus_plant ~ ~-0.7 ~ 0 0.01 0 1 20 normal @a[scores={blood_local=1}]
execute at @s run tp @s ~ ~1.4 ~

kill @s[type=!player]
