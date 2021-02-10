## by Tschipcraft
summon bat ~ ~ ~ {Tags:[soul,Invisible],Silent:1}
summon minecraft:zombie ~ ~ ~ {Tags:[soul_tail,Invisible],ArmorItems:[{},{},{},{id:"minecraft:ghast_tear",Count:1,tag:{CustomModelData:3}}],NoAI:1,Silent:1,DeathTime:19s}
summon minecraft:zombie ~ ~ ~ {Tags:[soul_torso,Invisible],ArmorItems:[{},{},{},{id:"minecraft:ghast_tear",Count:1,tag:{CustomModelData:2}}],NoAI:1,Silent:1,DeathTime:19s}
summon minecraft:zombie ~ ~ ~ {Tags:[soul_head,Invisible],ArmorItems:[{},{},{},{id:"minecraft:ghast_tear",Count:1,tag:{CustomModelData:1}}],NoAI:1,Silent:1,DeathTime:19s}


scoreboard players set @e[tag=soul_torso] nope 1
scoreboard players set @e[tag=soul_tail] nope 1
