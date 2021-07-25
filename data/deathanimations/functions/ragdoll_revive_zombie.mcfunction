##by Tschipcraft


summon minecraft:armor_stand ~ ~ ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Invisible:1b,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_core]}


summon minecraft:armor_stand ~ ~ ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_center,ragdoll_center-all-parts]}
summon minecraft:armor_stand ~ ~0.2 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:0,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_torso,ragdoll_part-all-parts]}
summon minecraft:zombie ~ ~-1.7 ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:[ragdoll_zombie,ragdoll,ragdoll_torso_visual,Invisible,exclude],NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1b,tag:{CustomModelData:10}}],Rotation:[1f,-90f],Silent:1}


summon minecraft:armor_stand ~ ~0.6 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_head_center,ragdoll_center-all-parts]}
summon minecraft:armor_stand ~ ~0.8 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:0,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_head,ragdoll_part-all-parts]}
execute unless data entity @s Item.tag.da_custom_head run summon minecraft:zombie ~ ~-1 ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:[ragdoll_zombie,ragdoll,ragdoll_head_visual,Invisible,exclude],NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1b,tag:{CustomModelData:13}}],Rotation:[1f,-90f],Silent:1}
execute if data entity @s Item.tag.da_custom_head run summon minecraft:zombie ~ ~-1 ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:[ragdoll_zombie,ragdoll,ragdoll_head_visual,Invisible,exclude],NoAI:1b,ArmorItems:[{},{},{},{}],Rotation:[1f,-90f],Silent:1}


execute positioned ^-0.35 ^ ^-0.15 run summon minecraft:armor_stand ~ ~0.3 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_arm_center,ragdoll_center-all-parts]}
execute positioned ^-0.35 ^ ^0.15 run summon minecraft:armor_stand ~ ~0.3 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:0,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_arm,ragdoll_part-all-parts]}
execute positioned ^-0.35 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.2 ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_arm_visual,Invisible,exclude],NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1b,tag:{CustomModelData:11}}],Rotation:[1f,1f],Silent:1}

execute positioned ^0.35 ^ ^-0.15 run summon minecraft:armor_stand ~ ~0.3 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_arm_center,ragdoll_center-all-parts]}
execute positioned ^0.35 ^ ^0.15 run summon minecraft:armor_stand ~ ~0.3 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:0,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_arm,ragdoll_part-all-parts]}
execute positioned ^0.35 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.2 ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_arm_visual,Invisible,exclude],NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1b,tag:{CustomModelData:11}}],Rotation:[1f,1f],Silent:1}


execute positioned ^-0.15 ^ ^-0.15 run summon minecraft:armor_stand ~ ~-0.2 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_leg_center,ragdoll_center-all-parts]}
execute positioned ^-0.15 ^ ^-0.15 run summon minecraft:armor_stand ~ ~-0.5 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:0,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_leg,ragdoll_part-all-parts]}
execute positioned ^-0.15 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.8 ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_leg_visual,Invisible,exclude],NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1b,tag:{CustomModelData:12}}],Rotation:[1f,90f],Silent:1}

execute positioned ^0.15 ^ ^-0.15 run summon minecraft:armor_stand ~ ~-0.2 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_leg_center,ragdoll_center-all-parts]}
execute positioned ^0.15 ^ ^-0.15 run summon minecraft:armor_stand ~ ~-0.5 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:0,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_leg,ragdoll_part-all-parts]}
execute positioned ^0.15 ^ ^-0.15 run summon minecraft:zombie ~ ~-1.8 ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_leg_visual,Invisible,exclude],NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",Count:1b,tag:{CustomModelData:12}}],Rotation:[1f,90f],Silent:1}



summon minecraft:armor_stand ~ ~0.8 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Silent:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_head_part]}
summon minecraft:armor_stand ~ ~0.3 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Silent:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_arm_part]}
summon minecraft:armor_stand ~ ~0.3 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Silent:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_arm_part]}
summon minecraft:armor_stand ~ ~-0.5 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Silent:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_right_leg_part]}
summon minecraft:armor_stand ~ ~-0.5 ~ {NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,Silent:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:[ragdoll_zombie,ragdoll,ragdoll_left_leg_part]}


team join NoCollision @e[tag=ragdoll]
scoreboard players add @e[tag=ragdoll] correction 1
scoreboard players add @e[tag=ragdoll,scores={correction=1}] age 3

scoreboard players operation Global correction = @s correction
execute as @e[tag=ragdoll_visual_nom,tag=!ragdoll_torso_nom] if score @s correction = Global correction run kill @s


kill @s[type=!player]
