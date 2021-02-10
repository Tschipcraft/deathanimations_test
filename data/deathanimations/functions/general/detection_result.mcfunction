## by Tschipcraft

execute store result score @s correction run data get storage d_a:detection initalise 1
execute if score @s initalise = @s correction run data modify storage d_a:detection success set value 0
