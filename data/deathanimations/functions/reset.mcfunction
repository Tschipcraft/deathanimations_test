## by Tschipcraft
execute as @e[tag=ragdoll] at @s run function deathanimations:kill_e
kill @e[tag=bodypart]
kill @e[tag=visual]
kill @e[tag=soul]
kill @e[tag=soul_torso]
kill @e[tag=soul_tail]
kill @e[tag=soul_head]

kill @e[tag=animal_death]
kill @e[tag=villager_like_death]
kill @e[tag=d_a_p]
kill @e[tag=endermite]
kill @e[tag=low_p_mode]

execute as @e[type=#deathanimations:marker_entities,tag=death_detection] at @s run function deathanimations:detection/normalise
execute as @e[scores={initalise=0..}] at @s run function deathanimations:detection/reset_entity

kill @e[tag=death_detection]

kill @e[tag=ragdoll_visual_nom]

scoreboard objectives remove correction
scoreboard objectives remove spawn_death_e
scoreboard objectives remove IsSpecial
scoreboard objectives remove Type
scoreboard objectives remove nope
scoreboard objectives remove initalise
scoreboard objectives remove age
scoreboard objectives remove OnFire
scoreboard objectives remove timeout_parts
scoreboard objectives remove staticy
scoreboard objectives remove cooldown
scoreboard objectives remove Variant
scoreboard objectives remove death_rotation
scoreboard objectives remove xm
scoreboard objectives remove ym
scoreboard objectives remove zm
scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z
scoreboard objectives remove dx
scoreboard objectives remove dy
scoreboard objectives remove dz
scoreboard objectives remove rotation
scoreboard objectives remove entity_count
scoreboard objectives remove wait
scoreboard objectives remove da_id


## Ragdoll
scoreboard objectives remove da_ragdoll_t
scoreboard objectives remove picked_up

## Player death
scoreboard objectives remove da_player_death

## Lightning
scoreboard objectives remove da_lightning

scoreboard objectives remove ragdoll_rot_1
scoreboard objectives remove ragdoll_rot_2

scoreboard objectives remove e_detection


function deathanimations:install
