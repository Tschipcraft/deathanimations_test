## by Tschipcraft

scoreboard objectives add d_launcher dummy
scoreboard objectives add entity_count dummy
scoreboard players add global entity_count 0
scoreboard players set Global d_launcher 1
schedule clear deathanimations:loop/remove_lag
schedule function deathanimations:loop/remove_lag 5t
schedule clear deathanimations:loop/rotation_update
#schedule function deathanimations:loop/rotation_update 3s
schedule clear deathanimations:loop/detect_entities
schedule function deathanimations:loop/detect_entities 2s
schedule clear deathanimations:loop/menu_interaction
schedule function deathanimations:loop/menu_interaction 1s

execute unless score global entity_count matches 1..100 run function deathanimations:reset
