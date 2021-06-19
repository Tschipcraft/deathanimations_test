## by Tschipcraft

scoreboard objectives add correction dummy
scoreboard objectives add lame_correction dummy
scoreboard objectives add IsSpecial dummy
scoreboard objectives add Type dummy
scoreboard objectives add initalise dummy
scoreboard objectives add age dummy
scoreboard objectives add OnFire dummy
scoreboard objectives add timeout_parts dummy
scoreboard objectives add staticy dummy
scoreboard objectives add cooldown dummy
scoreboard objectives add Variant dummy
scoreboard objectives add death_rotation dummy
scoreboard objectives add xm dummy
scoreboard objectives add ym dummy
scoreboard objectives add zm dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy
scoreboard objectives add rotation dummy
scoreboard objectives add entity_count dummy
scoreboard objectives add wait dummy
scoreboard objectives add da_id dummy

scoreboard objectives add menu trigger
scoreboard objectives add da_welcome trigger
scoreboard objectives add da_how_to_use trigger
scoreboard objectives add troubleshoot trigger

scoreboard objectives add pick_up dummy
scoreboard objectives add ragdoll_click minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add ragdoll_rot_1 dummy
scoreboard objectives add ragdoll_rot_2 dummy

scoreboard objectives add e_detection dummy
scoreboard objectives add spawn_death_e dummy

scoreboard objectives add b_test dummy


## Ragdoll
scoreboard objectives add da_ragdoll_t dummy

## Player death
scoreboard objectives add da_player_death deathCount


## Lightning
scoreboard objectives add da_lightning dummy


## teams
team add NoCollision
team modify NoCollision collisionRule never
team add NoName
team modify NoName nametagVisibility never
team modify NoName collisionRule never

## settings
scoreboard objectives add blood_local_on trigger
scoreboard objectives add blood_local_off trigger
scoreboard objectives add blood_local dummy
scoreboard objectives add enable_drops dummy
scoreboard objectives add enable_pickup dummy
scoreboard objectives add auto_crafting dummy
scoreboard objectives add paper_fix dummy
scoreboard objectives add part_lifetime dummy
scoreboard objectives add ragdoll_zombie dummy
scoreboard objectives add blood_global dummy
scoreboard players enable @a blood_local_off
scoreboard players enable @a blood_local_on
scoreboard players enable @a menu

scoreboard objectives add settings trigger

scoreboard objectives add da_v dummy
scoreboard players set Global da_v 11

## set defaults
execute unless score Global blood_global matches 0..1 run scoreboard players set Global blood_global 1
execute unless score Global enable_drops matches 0..1 run scoreboard players set Global enable_drops 1
execute unless score Global enable_pickup matches 0..1 run scoreboard players set Global enable_pickup 1
execute unless score Global auto_crafting matches 0..1 run scoreboard players set Global auto_crafting 0
execute unless score Global paper_fix matches 0..1 run scoreboard players set Global paper_fix 0
execute unless score Global ragdoll_zombie matches 0..1 run scoreboard players set Global ragdoll_zombie 0
execute unless score Global part_lifetime matches 0..3 run scoreboard players set Global part_lifetime 1

## Compatibility
execute at @r run schedule function deathanimations:compatibility/core 3s
