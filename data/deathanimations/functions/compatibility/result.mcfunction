## by Tschipcraft

execute as @e[type=armor_stand,tag=da_leg_test] at @s run tp @s @e[type=area_effect_cloud,tag=da_leg_test,limit=1,sort=nearest]
execute as @e[type=area_effect_cloud,tag=da_leg_test] at @s run tp @s ~ ~2 ~
execute as @e[type=zombie,tag=da_leg_test] at @s run tp @s ~ ~4 ~
execute as @e[type=armor_stand,tag=da_leg_test] at @s run tp @s ~ ~2 ~

execute as @e[type=armor_stand,tag=da_leg_test] at @s unless entity @e[type=area_effect_cloud,tag=da_leg_test,distance=..0.1] run tellraw @a ["",{"text":"[Death Animations]","color":"gray"},{"text":" An area effect cloud was removed unexpectedly! Please make sure that there is no command block/plugin installed which clears area effect clouds. The data pack will still work but there will be directional errors.","bold":true,"color":"red"}]
execute as @e[type=armor_stand,tag=da_leg_test] at @s unless entity @e[type=zombie,tag=da_leg_test,distance=..0.1] run tellraw @a ["",{"text":"[Death Animations]","color":"gray"},{"text":" A zombie was removed unexpectedly! Please make sure that there is no command block/plugin installed which clears zombies. Ragdolls will not work correctly!","bold":true,"color":"red"}]

execute as @e[type=armor_stand,tag=da_leg_test] at @s run tp @s @e[type=item,tag=da_leg_test,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=da_leg_test] at @s unless entity @e[type=item,tag=da_leg_test,distance=..0.1] run tellraw @a ["",{"text":"[Death Animations]","color":"gray"},{"text":" An item was removed unexpectedly! Please make sure that there is no command block/plugin installed which clears items. Death Detection will not work correctly!","bold":true,"color":"red"}]

kill @e[tag=da_leg_test]

title @a actionbar {"translate":"❌ Death Animations Resource Pack is NOT installed!","color":"red","bold":true}
