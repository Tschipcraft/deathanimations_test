##by Tschipcraft


scoreboard players reset @e[type=#deathanimations:ragdoll_entities,scores={wait=2..}] wait
scoreboard players add @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] wait 1

scoreboard players add @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] age 1
scoreboard players add @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] cooldown 0

## motion
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2}] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,limit=1,type=!armor_stand,type=!area_effect_cloud,type=!salmon,type=!dolphin,type=!tropical_fish,type=!phantom,type=!experience_orb,type=!zombie,type=!husk,type=!drowned,type=!skeleton,type=!stray,type=!wither_skeleton,type=!item,distance=..10]
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2}] at @s if entity @e[tag=arrow,distance=..9] run tp @s ~ ~ ~ facing entity @e[tag=arrow,limit=1,sort=furthest,distance=..9]
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2}] at @s if entity @e[tag=explosion,distance=..9] run tp @s ~ ~ ~ facing entity @e[tag=explosion,limit=1,sort=nearest,distance=..9]
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2}] at @s if entity @e[tag=explosion,distance=..9] run tag @s add exploded
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2}] at @s if entity @e[tag=arrow,distance=..9] run tag @s add arrowed
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2},tag=!da_no_knockback] at @s run function deathanimations:tick

execute as @s[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2},tag=da_player_death] at @s run function deathanimations:general/source/player
execute as @s[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2},tag=da_projectile_death] at @s run function deathanimations:general/source/projectile
execute as @s[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2},tag=da_explosion_death] at @s run function deathanimations:general/source/explosion

#execute as @s[type=#deathanimations:ragdoll_entities,tag=ragdoll,scores={age=2}] at @s run function deathanimations:tick

execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core] store result score @s xm run data get entity @s Motion[0] 200
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core] store result score @s ym run data get entity @s Motion[1] 200
execute as @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core] store result score @s zm run data get entity @s Motion[2] 200

# Reset tick
scoreboard players set Global da_ragdoll_t 0

# Start loop
function deathanimations:ragdoll/core/loop

# End loop
tag @e[type=#deathanimations:ragdoll_entities,tag=da_ticked] remove da_ticked

# Effects
effect give @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] minecraft:instant_damage 10 255 true
effect give @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] minecraft:resistance 10 255 true
effect give @e[type=#deathanimations:ragdoll_entities,tag=ragdoll] minecraft:absorption 10 255 true
effect give @e[type=#deathanimations:ragdoll_entities,tag=Invisible] minecraft:invisibility 10 0 true
