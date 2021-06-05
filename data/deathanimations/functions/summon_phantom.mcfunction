## by Tschipcraft
summon phantom ~ ~ ~ {NoAI:1,Tags:[explode,exclude],DeathTime:19s}

tp @e[type=phantom,tag=explode,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute if score Global enable_drops matches 1 run loot spawn ~ ~2 ~ loot minecraft:entities/phantom

kill @s[type=!player]
