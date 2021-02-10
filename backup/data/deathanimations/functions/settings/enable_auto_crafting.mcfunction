## by Tschipcraft

scoreboard players set Global auto_crafting 1

scoreboard objectives add da_r_flesh_d dummy
scoreboard objectives add da_bone_d dummy
scoreboard objectives add da_gunpowder_d dummy
scoreboard objectives add da_spidereye_d dummy
scoreboard objectives add da_porkchop_d dummy
scoreboard objectives add da_mutton_d dummy
scoreboard objectives add da_beef_d dummy
scoreboard objectives add da_iron_b_d dummy
scoreboard objectives add da_saddle_d dummy

execute as @s run function deathanimations:settings/core
