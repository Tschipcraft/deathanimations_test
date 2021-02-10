## by Tschipcraft

scoreboard objectives add d_launcher dummy
scoreboard players set Global d_launcher 1
schedule clear deathanimations:loop/remove_lag
schedule function deathanimations:loop/remove_lag 5s
schedule clear deathanimations:loop/rotation_update
schedule function deathanimations:loop/rotation_update 3s
schedule clear deathanimations:loop/detect_entities
schedule function deathanimations:loop/detect_entities 4s
schedule clear deathanimations:loop/menu_interaction
schedule function deathanimations:loop/menu_interaction 1s

function deathanimations:reset
