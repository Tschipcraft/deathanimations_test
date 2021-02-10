## by Tschipcraft

scoreboard players set @s spawn_death_e 1

execute as @s[tag=zombie_death] at @e[type=zombie,distance=..10,tag=!exclude] if score @e[type=minecraft:zombie,sort=nearest,limit=1,tag=!exclude] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=zombie_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=zombie_death,scores={IsSpecial=0,spawn_death_e=1},tag=!arrowed] if score Global ragdoll_zombie matches 0 positioned ~ ~ ~ run function deathanimations:summon_zombie
execute as @s[tag=zombie_death,scores={IsSpecial=0,spawn_death_e=1}] if entity @e[tag=explosion,distance=..9] positioned ~ ~ ~ run function deathanimations:summon_zombie
execute as @s[tag=zombie_death,scores={IsSpecial=0,spawn_death_e=1}] if score Global ragdoll_zombie matches 1 positioned ~ ~1.3 ~ run function deathanimations:ragdoll_create_zombie
execute as @s[tag=zombie_death,scores={IsSpecial=0,spawn_death_e=1},tag=arrowed] positioned ~ ~1.3 ~ run function deathanimations:ragdoll_create_zombie
execute as @s[tag=zombie_death,scores={IsSpecial=1,spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_small_zombie

execute as @s[tag=zombie_villager_death] at @e[type=zombie_villager,distance=..10] if score @e[type=minecraft:zombie_villager,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=zombie_villager_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=zombie_villager_death,scores={spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_zombie_villager

execute as @s[tag=husk_death] at @e[type=husk,distance=..10] if score @e[type=minecraft:husk,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=husk_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=husk_death,scores={IsSpecial=0,spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_husk
execute as @s[tag=husk_death,scores={IsSpecial=1,spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_small_husk

execute as @s[tag=drowned_death] at @e[type=drowned,distance=..10] if score @e[type=minecraft:drowned,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=drowned_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=drowned_death,scores={IsSpecial=0,spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_drowned
execute as @s[tag=drowned_death,scores={IsSpecial=1,spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_small_drowned

execute as @s[tag=skeleton_death] at @e[type=skeleton,distance=..10] if score @e[type=minecraft:skeleton,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=skeleton_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=skeleton_death,scores={spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_skeleton

execute as @s[tag=stray_death] at @e[type=stray,distance=..10] if score @e[type=minecraft:stray,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=stray_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=stray_death,scores={spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_stray

execute as @s[tag=wither_skeleton_death] at @e[type=wither_skeleton,distance=..10] if score @e[type=minecraft:wither_skeleton,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=wither_skeleton_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=wither_skeleton_death,scores={spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_wither_skeleton

execute as @s[tag=creeper_death] at @e[type=creeper,distance=..10] if score @e[type=minecraft:creeper,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=creeper_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=creeper_death,scores={spawn_death_e=1}] positioned ~ ~ ~ run function deathanimations:summon_creeper

execute as @s[tag=spider_death] at @e[type=spider,distance=..10] if score @e[type=minecraft:spider,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=spider_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=spider_death,scores={spawn_death_e=1}] positioned ~ ~ ~ run function deathanimations:summon_spider

execute as @s[tag=cave_spider_death] at @e[type=cave_spider,distance=..10] if score @e[type=minecraft:cave_spider,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=cave_spider_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=cave_spider_death,scores={spawn_death_e=1}] positioned ~ ~ ~ run function deathanimations:summon_cave_spider

execute as @s[tag=phantom_death] at @e[type=phantom,distance=..10] if score @e[type=minecraft:phantom,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=phantom_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=phantom_death,scores={spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_phantom

execute as @s[tag=pig_death] at @e[type=pig,distance=..10] if score @e[type=minecraft:pig,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=pig_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=pig_death,scores={cooldown=0,spawn_death_e=1},tag=arrowed] positioned ~ ~1 ~ run function deathanimations:summon_pig
execute as @s[tag=pig_death,scores={cooldown=0,spawn_death_e=1},tag=!arrowed] positioned ~ ~1 ~ run function deathanimations:summon_pig_part

execute as @s[tag=cow_death] at @e[type=cow,distance=..10] if score @e[type=minecraft:cow,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=cow_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=cow_death,scores={cooldown=0,spawn_death_e=1},tag=arrowed] positioned ~ ~1 ~ run function deathanimations:summon_cow
execute as @s[tag=cow_death,scores={cooldown=0,spawn_death_e=1},tag=!arrowed] positioned ~ ~1 ~ run function deathanimations:summon_cow_part

execute as @s[tag=sheep_death] at @e[type=sheep,distance=..10] if score @e[type=minecraft:sheep,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=sheep_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=sheep_death,scores={cooldown=0,spawn_death_e=1},tag=arrowed] positioned ~ ~1 ~ run function deathanimations:summon_sheep
execute as @s[tag=sheep_death,scores={cooldown=0,spawn_death_e=1},tag=!arrowed] positioned ~ ~1 ~ run function deathanimations:summon_sheep_part

execute as @s[tag=chicken_death] at @e[type=chicken,distance=..10] if score @e[type=minecraft:chicken,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=chicken_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=chicken_death,scores={cooldown=0,spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_chicken

execute as @s[tag=vindicator_death] at @e[type=vindicator,distance=..10] if score @e[type=minecraft:vindicator,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=vindicator_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=vindicator_death,scores={cooldown=0,spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_vindicator

execute as @s[tag=evoker_death] at @e[type=evoker,distance=..10] if score @e[type=minecraft:evoker,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=evoker_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=evoker_death,scores={cooldown=0,spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_evoker

execute as @s[tag=pillager_death] at @e[type=pillager,distance=..10] if score @e[type=minecraft:pillager,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=pillager_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=pillager_death,scores={cooldown=0,spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_pillager

execute as @s[tag=villager_death] at @e[type=villager,distance=..10] if score @e[type=minecraft:villager,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=villager_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=villager_death,scores={cooldown=0,spawn_death_e=1}] if entity @e[type=minecraft:zombie_villager,distance=..0.5] run kill @s
execute as @s[tag=villager_death,scores={IsSpecial=0,spawn_death_e=1}] if score Global ragdoll_zombie matches 1 positioned ~ ~1.3 ~ run function deathanimations:ragdoll_create_plain_villager
execute as @s[tag=villager_death,scores={cooldown=0,spawn_death_e=1}] if score Global ragdoll_zombie matches 0 positioned ~ ~1 ~ run function deathanimations:summon_villager

execute as @s[tag=iron_golem_death] at @e[type=iron_golem,distance=..10] if score @e[type=minecraft:iron_golem,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=iron_golem_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=iron_golem_death,scores={cooldown=0,spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_iron_golem

execute as @s[tag=ravager_death] at @e[type=ravager,distance=..10] if score @e[type=minecraft:ravager,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=ravager_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=ravager_death,scores={cooldown=0,spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_ravager

#execute as @s[tag=tropical_fish_death] at @e[type=tropical_fish,distance=..10] if score @e[type=minecraft:tropical_fish,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=tropical_fish_death] unless entity @e[type=minecraft:tropical_fish,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_tropical_fish

#execute as @s[tag=dolphin_death] at @e[type=dolphin,distance=..10] if score @e[type=minecraft:dolphin,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=dolphin_death] unless entity @e[type=minecraft:dolphin,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_dolphin

#execute as @s[tag=salmon_death] at @e[type=salmon,distance=..10] if score @e[type=minecraft:salmon,sort=nearest,limit=1] initalise = @s initalise run tp @s ~ ~ ~ ~ ~
#execute as @s[tag=salmon_death] unless entity @e[type=minecraft:salmon,distance=..1] positioned ~ ~1 ~ run function deathanimations:summon_salmon

execute as @s[tag=endermite_death] at @e[type=endermite,distance=..10] if score @e[type=minecraft:endermite,sort=nearest,limit=1] initalise = @s initalise run function deathanimations:general/detection_tp
execute as @s[tag=endermite_death,scores={spawn_death_e=1}] run function deathanimations:general/detection_test
execute as @s[tag=endermite_death,scores={spawn_death_e=1}] positioned ~ ~1 ~ run function deathanimations:summon_endermite
