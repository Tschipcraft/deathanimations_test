## by Tschipcraft

scoreboard players enable @a troubleshoot

execute as @a[scores={troubleshoot=1}] run function deathanimations:compatibility/troubleshoot
scoreboard players reset @a[scores={troubleshoot=1..}] troubleshoot

## Settings
execute as @a unless entity @s[scores={blood_local=0..1}] run scoreboard players set @s blood_local 3
execute as @a if entity @s[scores={blood_local=3}] run tellraw @s ["",{"text":"[Death Animations]","color":"gray"},{"text":" To show this screen again, use ","color":"green"},{"text":"\n"},{"text":"/trigger menu","italic":true,"color":"green","clickEvent":{"action":"suggest_command","value":"/trigger menu"},"hoverEvent":{"action":"show_text","value":"Or click here"}}]

#execute as @a if entity @s[scores={blood_local=3}] run tellraw @s ["",{"text":"=-=Death Animations v1.4 by Tschipcraft installed!=-=","bold":true,"color":"aqua"},{"text":"\n"},{"text":"For settings issue the command","color":"green"},{"text":"\n"},{"text":"/trigger settings","italic":true,"color":"green","clickEvent":{"action":"suggest_command","value":"/trigger settings"},"hoverEvent":{"action":"show_text","value":"Or click here"}}]
#execute as @a if entity @s[scores={blood_local=3}] run tellraw @s ["",{"text":"[Death Animations]","color":"gray"},{"text":" If something doesn't work use ","color":"green"},{"text":"\n"},{"text":"/trigger troubleshoot","italic":true,"color":"green","clickEvent":{"action":"suggest_command","value":"/trigger troubleshoot"},"hoverEvent":{"action":"show_text","value":"Or click here"}}]
#execute as @a if entity @s[scores={blood_local=3}] run tellraw @s ["",{"text":"[Death Animations]","color":"gray"},{"text":" Make sure to install the resource pack!","color":"aqua"}]
execute as @a if entity @s[scores={blood_local=3}] if score Global blood_global matches 1 run scoreboard players set @s blood_local 1
execute as @a if entity @s[scores={blood_local=3}] if score Global blood_global matches 0 run scoreboard players set @s blood_local 0
scoreboard players set @a[scores={blood_local_on=1}] blood_local 1
execute as @a[scores={blood_local_on=1}] at @s run function deathanimations:settings/core
scoreboard players set @a[scores={blood_local_on=1}] blood_local_on 0
scoreboard players set @a[scores={blood_local_off=1}] blood_local 0
execute as @a[scores={blood_local_off=1}] at @s run function deathanimations:settings/core
scoreboard players set @a[scores={blood_local_off=1}] blood_local_off 0

scoreboard players enable @a blood_local_off
scoreboard players enable @a blood_local_on
scoreboard players enable @a settings

execute as @a[scores={settings=1}] at @s run function deathanimations:settings/core
scoreboard players set @a[scores={settings=1..}] settings 0

schedule function deathanimations:loop/menu_interaction 6t
