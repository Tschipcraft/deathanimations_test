## by Tschipcraft


## Position correction

execute as @s[type=#deathanimations:marker_entities,tag=animal_death] at @s run tp @s ~ ~-0.15 ~
# Small
execute as @s[type=#deathanimations:marker_entities,tag=correct,nbt={Small:1b}] at @s run tp @s ~ ~0.73 ~

#execute as @s[type=#deathanimations:marker_entities,tag=visual] at @s run function deathanimations:visual_correction/decode


# Arrow effect cloud
#scoreboard players add @s[type=#deathanimations:marker_entities,tag=arrow] age 1


#execute as @s[type=#deathanimations:marker_entities,tag=visual] at @s run function deathanimations:general/main
#execute as @s[type=#deathanimations:marker_entities,tag=bodypart] at @s run function deathanimations:general/main


# Bodypart entity
execute as @s[type=#deathanimations:marker_entities,tag=bodypart] at @s run function deathanimations:general/bodypart/core

#execute unless entity @e[type=#deathanimations:marker_entities,tag=bodypart] if entity @e[type=#deathanimations:marker_entities,tag=visual] run function deathanimations:general/main

# Lame Death (won't exist after rewrite prob)
#execute as @s[type=#deathanimations:marker_entities,tag=lame_death,scores={cooldown=..1}] at @s run function deathanimations:lame_death

#scoreboard players add @e[type=#deathanimations:marker_entities,tag=!endermite,scores={cooldown=1..}] cooldown 1

#execute as @s[type=#deathanimations:marker_entities,tag=lame_death] run function deathanimations:animation/lame_death


## Special Animations

## Endermite death animation
execute as @s[type=#deathanimations:marker_entities,tag=endermite] run function deathanimations:animation/endermite



## Despawn Bodyparts

execute as @s[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=500..}] at @s run tp @s ~ ~-0.001 ~
execute as @s[type=#deathanimations:marker_entities,tag=low_p_mode,scores={timeout_parts=500..}] at @s run tp @s ~ ~-0.001 ~
execute as @s[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=500}] at @s run data merge entity @s {NoGravity:1b,Silent:1b}
# reset now in /loop/remove_lag
execute as @s[type=#deathanimations:marker_entities,tag=bodypart,tag=torso,scores={timeout_parts=851}] at @s run function deathanimations:spawn_loot
execute as @s[type=#deathanimations:marker_entities,tag=low_p_mode,tag=torso,scores={timeout_parts=850}] at @s run function deathanimations:spawn_loot
execute as @s[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=855..}] at @s run tp @s ~ ~-0.0031 ~
execute as @s[type=#deathanimations:marker_entities,tag=low_p_mode,scores={timeout_parts=855..}] at @s run tp @s ~ ~-0.0031 ~
execute as @s[type=#deathanimations:marker_entities,tag=bodypart,scores={timeout_parts=855..},tag=ravager] at @s run tp @s ~ ~-0.007 ~
kill @s[type=minecraft:armor_stand,tag=low_p_mode,scores={timeout_parts=951..}]


#execute if score Global part_lifetime matches ..2 run kill @e[type=armor_stand,scores={age=1599..}]
#execute if score Global part_lifetime matches 3.. run kill @e[type=armor_stand,scores={age=95999..}]

## Remove Lag (Partly in /loop/remove_lag)

#execute if score Global part_lifetime matches 2 store result score low_p_entities entity_count run execute if entity @e[type=#deathanimations:marker_entities,tag=low_p_mode]
#execute if score Global part_lifetime matches 2 if score low_p_entities entity_count matches 20.. run scoreboard players add @e[type=#deathanimations:marker_entities,tag=low_p_mode] timeout_parts 1

#execute if score Global part_lifetime matches 2 if score low_p_entities entity_count matches 150.. run function deathanimations:clear
#execute if score Global part_lifetime matches ..2 run execute if score global entity_count matches 50.. run function deathanimations:clear


## low performance bodyparts [WIP]
#execute if score Global part_lifetime matches 2.. run execute as @e[type=#deathanimations:marker_entities,tag=bodypart,scores={age=35..},tag=OnGround] at @s unless entity @e[type=!armor_stand,type=!area_effect_cloud,type=!item,type=!arrow,distance=..8] run kill @s
#execute if score Global part_lifetime matches 2.. run execute as @e[type=#deathanimations:marker_entities,tag=visual,scores={age=35..},tag=OnGround] at @s unless entity @e[type=!armor_stand,type=!area_effect_cloud,type=!item,type=!arrow,distance=..7] run function deathanimations:low_p_mode/activate

#execute if score Global part_lifetime matches 2.. run execute as @e[type=#deathanimations:marker_entities,tag=low_p_mode,scores={timeout_parts=..500}] at @s if entity @a[distance=..15] if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!item,type=!arrow,distance=..4] run function deathanimations:low_p_mode/revive
#execute if score Global part_lifetime matches ..1 run execute as @e[type=#deathanimations:marker_entities,tag=low_p_mode,scores={timeout_parts=..500}] at @s run function deathanimations:low_p_mode/revive


## Visual position correction

execute as @s[type=#deathanimations:marker_entities,tag=animal_death] at @s run tp @s ~ ~0.15 ~
# Small
execute as @s[type=#deathanimations:marker_entities,tag=correct,nbt={Small:1b}] at @s run tp @s ~ ~0.73 ~

#execute as @s[type=#deathanimations:marker_entities,tag=visual] at @s run function deathanimations:visual_correction/encode
