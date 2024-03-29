## by Tschipcraft

function deathanimations:reset

scoreboard objectives remove health

scoreboard objectives remove correction
scoreboard objectives remove lame_correction
scoreboard objectives remove t_correction
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
scoreboard objectives remove b_test

## Teams
team remove NoCollision
team remove NoName

## Settings
scoreboard objectives remove blood_local_on
scoreboard objectives remove blood_local_off
scoreboard objectives remove ts.da.settings

scoreboard objectives remove blood_local
scoreboard objectives remove enable_drops
scoreboard objectives remove enable_pickup
scoreboard objectives remove auto_crafting
scoreboard objectives remove paper_fix
scoreboard objectives remove blood_global
scoreboard objectives remove part_lifetime

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

# Menu
scoreboard objectives remove tschipcraft.menu
scoreboard objectives remove ts.da.welcome
scoreboard objectives remove da_how_to_use
scoreboard objectives remove d_launcher
scoreboard objectives remove ragdoll_zombie
scoreboard objectives remove troubleshoot


# Legacy
scoreboard objectives remove menu
scoreboard objectives remove da_welcome


say ⏻ Uninstalled Death Animations by Tschipcraft!

datapack disable "file/deathanimations.zip"
datapack disable "file/deathanimations"
datapack disable "file/${file_name}"
