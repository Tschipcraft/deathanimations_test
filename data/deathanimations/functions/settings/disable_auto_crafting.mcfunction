## by Tschipcraft

scoreboard players set Global auto_crafting 0

scoreboard objectives remove da_r_flesh_d
scoreboard objectives remove da_bone_d
scoreboard objectives remove da_gunpowder_d
scoreboard objectives remove da_spidereye_d
scoreboard objectives remove da_porkchop_d
scoreboard objectives remove da_mutton_d
scoreboard objectives remove da_beef_d
scoreboard objectives remove da_iron_b_d
scoreboard objectives remove da_saddle_d

execute as @s run function deathanimations:settings/core
