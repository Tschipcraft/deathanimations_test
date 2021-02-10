## by Tschipcraft

execute if score Global enable_drops matches 1 as @s[tag=wither_skeletonbody,tag=torso,tag=bodypart] at @s run loot spawn ~ ~1 ~ loot minecraft:entities/wither_skeleton
execute if score Global enable_drops matches 1 as @s[tag=skeletonbody,tag=torso,tag=bodypart] at @s run loot spawn ~ ~1 ~ loot minecraft:entities/skeleton
execute if score Global enable_drops matches 1 as @s[tag=zombiebody,tag=torso,tag=bodypart] at @s run loot spawn ~ ~1 ~ loot minecraft:entities/zombie
execute if score Global enable_drops matches 1 as @s[tag=creeperbody,tag=torso,tag=bodypart] at @s run loot spawn ~ ~1 ~ loot minecraft:entities/creeper
execute if score Global enable_drops matches 1 as @s[tag=huskbody,tag=torso,tag=bodypart] at @s run loot spawn ~ ~1 ~ loot minecraft:entities/husk
execute if score Global enable_drops matches 1 as @s[tag=straybody,tag=torso,tag=bodypart] at @s run loot spawn ~ ~1 ~ loot minecraft:entities/stray
execute if score Global enable_drops matches 1 as @s[tag=drownedbody,tag=torso,tag=bodypart] at @s run loot spawn ~ ~1 ~ loot minecraft:entities/drowned
execute if score Global enable_drops matches 1 as @s[tag=spiderbody,tag=torso,tag=bodypart,tag=!no_loot] at @s run loot spawn ~ ~1 ~ loot minecraft:entities/spider
execute if score Global enable_drops matches 1 as @s[tag=cave_spiderbody,tag=torso,tag=bodypart,tag=!no_loot] at @s run loot spawn ~ ~1 ~ loot minecraft:entities/cave_spider
execute if score Global enable_drops matches 1 as @s[tag=ragdoll_zombie] at @s run loot spawn ~ ~1 ~ loot minecraft:entities/zombie

execute if score Global enable_drops matches 1 as @s[tag=pigbody,tag=torso,tag=bodypart] at @s run loot spawn ~ ~1 ~ loot minecraft:entities/pig
execute if score Global enable_drops matches 1 as @s[tag=sheepbody,tag=torso,tag=bodypart] at @s run loot spawn ~ ~1 ~ loot minecraft:entities/sheep
execute if score Global enable_drops matches 1 as @s[tag=cowbody,tag=torso,tag=bodypart] at @s run loot spawn ~ ~1 ~ loot minecraft:entities/cow
