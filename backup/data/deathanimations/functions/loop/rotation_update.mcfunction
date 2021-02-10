## by Tschipcraft

execute as @e[type=#deathanimations:marker_entities,tag=bodypart] run function deathanimations:general/rotation/update

schedule function deathanimations:loop/rotation_update 1s
