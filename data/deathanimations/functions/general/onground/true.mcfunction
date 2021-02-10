## by Tschipcraft

tag @s add OnGround
execute positioned ~ ~-1.4 ~ as @e[type=#deathanimations:marker_entities,tag=visual,distance=..2,sort=nearest,limit=1] run function deathanimations:general/onground/true_visual
