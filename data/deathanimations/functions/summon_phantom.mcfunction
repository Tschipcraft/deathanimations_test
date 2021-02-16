## by Tschipcraft
summon phantom ~ ~ ~ {NoAI:1,Tags:[explode,exclude],DeathTime:19s}

tp @e[tag=explode,type=phantom,sort=nearest,limit=1,distance=..1] @s
execute if score Global enable_drops matches 1 run loot spawn ~ ~2 ~ loot minecraft:entities/phantom

kill @s[type=!player]
