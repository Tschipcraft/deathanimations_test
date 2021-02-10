## by Tschipcraft

execute store result score @s t_correction run data get storage d_a:body_test correction 1
execute if score @s t_correction = @s correction run data modify storage d_a:body_test success set value 1
