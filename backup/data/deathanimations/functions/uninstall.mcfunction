## by Tschipcraft

function deathanimations:reset

scoreboard objectives remove health

scoreboard objectives remove correction
scoreboard objectives remove IsSpecial
scoreboard objectives remove Type
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

scoreboard objectives remove pick_up
scoreboard objectives remove ragdoll_click

scoreboard objectives remove ragdoll_rot_1
scoreboard objectives remove ragdoll_rot_2

scoreboard objectives remove e_detection
scoreboard objectives remove spawn_death_e

## teams
team remove NoCollision
team remove NoName

## settings
scoreboard objectives remove blood_local_on
scoreboard objectives remove blood_local_off
scoreboard objectives remove blood_local
scoreboard objectives remove enable_drops
scoreboard objectives remove enable_pickup
scoreboard objectives remove auto_crafting
scoreboard objectives remove paper_fix
scoreboard objectives remove blood_global
scoreboard objectives remove part_lifetime
scoreboard objectives remove da_welcome
scoreboard objectives remove da_how_to_use

scoreboard objectives remove da_r_flesh_d
scoreboard objectives remove da_bone_d
scoreboard objectives remove da_gunpowder_d
scoreboard objectives remove da_spidereye_d
scoreboard objectives remove da_porkchop_d
scoreboard objectives remove da_mutton_d
scoreboard objectives remove da_beef_d
scoreboard objectives remove da_iron_b_d
scoreboard objectives remove da_saddle_d

scoreboard objectives remove settings
scoreboard objectives remove da_v

scoreboard objectives remove menu
scoreboard objectives remove da_welcome
scoreboard objectives remove da_how_to_use
scoreboard objectives remove d_launcher
scoreboard objectives remove ragdoll_zombie

say Uninstalled Death Animations by Tschipcraft!

datapack disable "file/deathanimation.zip"
