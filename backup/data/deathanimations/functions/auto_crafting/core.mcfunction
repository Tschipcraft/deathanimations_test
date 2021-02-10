## by Tschipcraft

execute as @a[gamemode=!spectator] store result score @s da_r_flesh_d run clear @s minecraft:rotten_flesh{da_drop:1} 1
execute as @a[gamemode=!spectator] store result score @s da_bone_d run clear @s minecraft:bone{da_drop:1} 1
execute as @a[gamemode=!spectator] store result score @s da_gunpowder_d run clear @s minecraft:gunpowder{da_drop:1} 1
execute as @a[gamemode=!spectator] store result score @s da_spidereye_d run clear @s minecraft:spider_eye{da_drop:1} 1
execute as @a[gamemode=!spectator] store result score @s da_porkchop_d run clear @s minecraft:porkchop{da_drop:1} 1
execute as @a[gamemode=!spectator] store result score @s da_mutton_d run clear @s minecraft:mutton{da_drop:1} 1
execute as @a[gamemode=!spectator] store result score @s da_beef_d run clear @s minecraft:beef{da_drop:1} 1
execute as @a[gamemode=!spectator] store result score @s da_iron_b_d run clear @s minecraft:iron_block{da_drop:1} 1
execute as @a[gamemode=!spectator] store result score @s da_saddle_d run clear @s minecraft:saddle{da_drop:1} 1

execute as @a[scores={da_r_flesh_d=1..}] run function deathanimations:auto_crafting/rotten_flesh
execute as @a[scores={da_bone_d=1..}] run function deathanimations:auto_crafting/bone
execute as @a[scores={da_gunpowder_d=1..}] run function deathanimations:auto_crafting/gunpowder
execute as @a[scores={da_spidereye_d=1..}] run function deathanimations:auto_crafting/spider_eye
execute as @a[scores={da_porkchop_d=1..}] run function deathanimations:auto_crafting/porkchop
execute as @a[scores={da_mutton_d=1..}] run function deathanimations:auto_crafting/mutton
execute as @a[scores={da_beef_d=1..}] run function deathanimations:auto_crafting/beef
execute as @a[scores={da_iron_b_d=1..}] run function deathanimations:auto_crafting/iron_block
execute as @a[scores={da_saddle_d=1..}] run function deathanimations:auto_crafting/saddle
