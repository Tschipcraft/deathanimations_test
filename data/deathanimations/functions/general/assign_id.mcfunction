##by Tschipcraft
# Assigns a unique id to the visual entity and bodypart entity

scoreboard players add .global da_sid 1
scoreboard players operation @e[type=minecraft:armor_stand,tag=bodypart,tag=init,limit=1,sort=arbitrary] da_sid = .global da_sid
#scoreboard players operation @e[type=minecraft:armor_stand,tag=bodypart,tag=low_p_revive,limit=1,sort=arbitrary] da_sid = .global da_sid
scoreboard players operation @e[type=minecraft:armor_stand,tag=visual,tag=init,limit=1,sort=arbitrary] da_sid = .global da_sid

tag @e[type=minecraft:armor_stand,tag=init,limit=2,sort=arbitrary] remove init
