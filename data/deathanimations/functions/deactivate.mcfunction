## by Tschipcraft

function deathanimations:reset

scoreboard objectives remove correction
scoreboard objectives remove lame_correction
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
scoreboard objectives remove health

scoreboard objectives remove picked_up
scoreboard objectives remove ragdoll_click

scoreboard objectives remove ragdoll_rot_1
scoreboard objectives remove ragdoll_rot_2

scoreboard objectives remove e_detection
scoreboard objectives remove spawn_death_e
scoreboard objectives remove b_test

## teams
team remove NoCollision
team remove NoName

## settings
scoreboard objectives remove blood_global

scoreboard objectives remove settings

say Deactivated by @s!
say Note: The data pack is not fully uninstalled! To uninstall, use /function deathanimations:uninstall

datapack disable "file/deathanimations.zip"
datapack disable "file/deathanimations"
