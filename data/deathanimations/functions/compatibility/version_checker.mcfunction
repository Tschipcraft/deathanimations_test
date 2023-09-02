##by Tschipcraft

scoreboard objectives add ts_version dummy
execute store result score global ts_version run data get entity @r DataVersion
#execute if score global ts_version matches 2863.. run tellraw @a [{"text":"[Death Animations] ","color":"gray"},{"text":"?","bold":true,"color":"gold"},{"text":" Minecraft version 1.18.1 or above detected! This data pack may not work correctly anymore! Please make sure to check for updates in the menu! (","color":"gold"},{"text":"/trigger tschipcraft.menu","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger tschipcraft.menu"},"hoverEvent":{"action":"show_text","contents":"Click here"}},{"text":")","color":"gold"}]
#execute if score global ts_version matches 2731..2862 run say 1.18 detected!
#execute if score global ts_version matches 2587..2731 run say 1.17 detected!
#execute if score global ts_version matches 2231..2586 run say 1.16 detected!
execute if score global ts_version matches 1977..2230 run tellraw @a [{"text":"[Death Animations] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.15","color":"red","bold":true},{"text":" detected! This edition of the data pack does not work in 1.15! Please use 1.16 or above or ","color":"red"},{"text":"consider installing this legacy edition for 1.15!","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://drive.google.com/drive/folders/1vMmvi8GHs2SUpb8CtrMt7Z2zT5Z0_jS7?usp=sharing"},"hoverEvent":{"action":"show_text","value":"Click here"}}]
execute if score global ts_version matches 1632..1976 run tellraw @a [{"text":"[Death Animations] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.14","color":"red","bold":true},{"text":" detected! This edition of the data pack does not work in 1.14! Please use 1.16 or above or ","color":"red"},{"text":"consider installing this legacy edition for 1.14!","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://drive.google.com/drive/folders/1pR06ZObPHBL4X04Mk7EecWycmDPw_spG?usp=sharing"},"hoverEvent":{"action":"show_text","value":"Click here"}}]
execute if score global ts_version matches 1343..1631 run tellraw @a [{"text":"[Death Animations] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.13","color":"red","bold":true},{"text":" detected! This pack does not work in 1.13 or below! Please use 1.16 or above or check out the legacy builds!","color":"red"}]

execute if score global ts_version matches 0 run function deathanimations:compatibility/version_retry

scoreboard objectives remove ts_version

# Dev
tellraw @a [{"text":"[Death Animations] ","color":"gray"},{"text":"?","bold":true,"color":"gold"},{"text":" You are running a active development version! Please make sure to backup your world before using!","color":"gold"}]
