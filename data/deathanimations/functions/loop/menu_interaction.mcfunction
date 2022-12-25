## by Tschipcraft

scoreboard players enable @a menu
scoreboard players enable @a troubleshoot
scoreboard players add @a da_welcome 0
execute as @a[scores={menu=1..60,da_welcome=1}] run scoreboard players set @s da_welcome 0
execute as @a[scores={da_welcome=0}] run function deathanimations:messages/welcome
execute as @a[scores={da_how_to_use=1}] run function deathanimations:messages/how_to_use

execute as @a[scores={menu=1..60,da_welcome=1}] run scoreboard players set @s da_welcome 2
execute as @a[scores={menu=61..}] run scoreboard players set @s da_welcome 1
scoreboard players reset @a[scores={menu=122..}] menu
scoreboard players add @a[scores={menu=1..}] menu 1

execute as @a[scores={troubleshoot=1}] run function deathanimations:compatibility/troubleshoot
scoreboard players reset @a[scores={troubleshoot=1..}] troubleshoot

## settings
execute as @a unless entity @s[scores={blood_local=0..1}] run scoreboard players set @s blood_local 3
execute as @a if entity @s[scores={blood_local=3}] run tellraw @s ["",{"text":"[Death Animations]","color":"gray"},{"text":" To show this screen again, use ","color":"green"},{"text":"\n"},{"text":"/trigger menu","italic":true,"color":"green","clickEvent":{"action":"suggest_command","value":"/trigger menu"},"hoverEvent":{"action":"show_text","value":"Or click here"}}]

#execute as @a if entity @s[scores={blood_local=3}] run tellraw @s ["",{"text":"=-=Death Animations v1.4 by Tschipcraft installed!=-=","bold":true,"color":"aqua"},{"text":"\n"},{"text":"For settings issue the command","color":"green"},{"text":"\n"},{"text":"/trigger settings","italic":true,"color":"green","clickEvent":{"action":"suggest_command","value":"/trigger settings"},"hoverEvent":{"action":"show_text","value":"Or click here"}}]
#execute as @a if entity @s[scores={blood_local=3}] run tellraw @s ["",{"text":"[Death Animations]","color":"gray"},{"text":" If something doesn't work use ","color":"green"},{"text":"\n"},{"text":"/trigger troubleshoot","italic":true,"color":"green","clickEvent":{"action":"suggest_command","value":"/trigger troubleshoot"},"hoverEvent":{"action":"show_text","value":"Or click here"}}]
#execute as @a if entity @s[scores={blood_local=3}] run tellraw @s ["",{"text":"[Death Animations]","color":"gray"},{"text":" Make sure to install the resource pack!","color":"aqua"}]
execute as @a if entity @s[scores={blood_local=3}] if score Global blood_global matches 1 run scoreboard players set @s blood_local 1
execute as @a if entity @s[scores={blood_local=3}] if score Global blood_global matches 0 run scoreboard players set @s blood_local 0
scoreboard players set @a[scores={blood_local_on=1}] blood_local 1
execute as @a[scores={blood_local_on=1}] run function deathanimations:settings/core
scoreboard players set @a[scores={blood_local_on=1}] blood_local_on 0
scoreboard players set @a[scores={blood_local_off=1}] blood_local 0
execute as @a[scores={blood_local_off=1}] run function deathanimations:settings/core
scoreboard players set @a[scores={blood_local_off=1}] blood_local_off 0

scoreboard players enable @a blood_local_off
scoreboard players enable @a blood_local_on
scoreboard players enable @a settings

execute as @a[scores={settings=1}] run function deathanimations:settings/core
scoreboard players set @a[scores={settings=1..}] settings 0

schedule function deathanimations:loop/menu_interaction 6t
