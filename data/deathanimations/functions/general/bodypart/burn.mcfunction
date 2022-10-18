##by Tschipcraft
# Plays burn animation when bodypart entity is in lava (@s = visual entity; ~ ~ ~/@e[tag=this] = bodypart entity)

particle minecraft:falling_dust obsidian ~ ~0.2 ~ 0.2 0.2 0.2 0 30 normal
particle minecraft:ash ~ ~0.4 ~ 0.2 0.1 0.2 0 50 normal
playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~
function deathanimations:general/bodypart/clear
