## by Tschipcraft

execute as @s[scores={timeout_parts=450..}] at @s run tp @s ~ ~-0.001 ~
execute as @s[tag=ragdoll_torso_nom,scores={timeout_parts=851}] at @s run function deathanimations:spawn_loot
execute as @s[scores={timeout_parts=951..}] run kill @s

execute as @s[tag=ragdoll_torso_nom,tag=ragdoll_zombie,scores={timeout_parts=..450}] at @s if entity @a[gamemode=!spectator,distance=..2] positioned ~ ~2 ~ run function deathanimations:ragdoll_revive_zombie
execute as @s[tag=ragdoll_torso_nom,tag=ragdoll_zombie,scores={timeout_parts=..450}] at @s if entity @a[gamemode=!spectator,distance=..35] if block ~ ~1 ~ #deathanimations:nonsolid positioned ~ ~2 ~ run function deathanimations:ragdoll_revive_zombie

execute as @s[tag=ragdoll_torso_nom,tag=ragdoll_plain_villager,scores={timeout_parts=..450}] at @s if entity @a[gamemode=!spectator,distance=..2] positioned ~ ~2 ~ run function deathanimations:ragdoll_revive_plain_villager
execute as @s[tag=ragdoll_torso_nom,tag=ragdoll_plain_villager,scores={timeout_parts=..450}] at @s if entity @a[gamemode=!spectator,distance=..35] if block ~ ~1 ~ #deathanimations:nonsolid positioned ~ ~2 ~ run function deathanimations:ragdoll_revive_plain_villager

# explosion
scoreboard players set @s[tag=ragdoll_torso_nom] OnFire 0
execute as @s[tag=ragdoll_torso_nom,tag=ragdoll_zombie] at @s if entity @e[type=tnt,distance=..8,nbt={Fuse:1s}] positioned ~ ~1.5 ~ run function deathanimations:summon_zombie
execute as @s at @s if entity @e[type=tnt,distance=..9,nbt={Fuse:1s}] run kill @s

# fire
execute as @s at @s if block ~ ~2 ~ fire run particle smoke ~ ~1.3 ~ 0.1 0.1 0.1 0.01 5
execute as @s at @s if block ~ ~2 ~ lava run particle smoke ~ ~1.3 ~ 0.1 0.1 0.1 0.01 5
