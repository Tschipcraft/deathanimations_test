## by Tschipcraft

#particle minecraft:block magma_block ~ ~ ~ 0.2 0.2 0.2 0 100 normal
particle minecraft:falling_dust obsidian ~ ~0.2 ~ 0.2 0.2 0.2 0 30 normal
particle minecraft:ash ~ ~0.4 ~ 0.2 0.1 0.2 0 50 normal
playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~
execute positioned ~ ~-1.4 ~ run kill @e[tag=visual,limit=1,sort=nearest,distance=..2]
execute positioned ~ ~-1.4 ~ run kill @e[tag=animal_death,limit=1,sort=nearest,distance=..2]
execute positioned ~ ~-1.4 ~ run kill @e[tag=villager_like_death,limit=1,sort=nearest,distance=..2]
kill @s[type=!player]
