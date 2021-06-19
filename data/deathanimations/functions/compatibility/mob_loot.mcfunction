##by Tschipcraft

tellraw @a ["",{"text":"[Death Animations]","color":"gray"},{"text":" The gamerule doMobLoot is set to false. Death Animations will not work because it uses a loot table based system to detect entity death for most mobs. ","bold":true,"color":"red"},{"text":"Click here to fix","color":"dark_green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click here"}]},"clickEvent":{"action":"run_command","value":"/gamerule doMobLoot true"}}]
