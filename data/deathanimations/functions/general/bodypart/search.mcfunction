##by Tschipcraft
# Searches up visual counterpart entity from bodypart entity (~ ~ ~/@s =! bodypart entity) and then executes everything that needs to be done

scoreboard players operation .search da_sid = @s da_sid
tag @s add this
execute as @e[type=#deathanimations:marker_entities,tag=visual,predicate=deathanimations:search] rotated as @s run function deathanimations:general/bodypart/visual
tag @s remove this
