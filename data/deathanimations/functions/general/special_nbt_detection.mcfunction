## Special nbt

##Funktioniert nicht for some reason
##execute as @s[tag=skeleton_death] if entity @e[type=skeleton,sort=nearest,limit=1,nbt={HandItems:[{Count:1b}]},distance=..0.1] store result entity @s HandItems int 1 run data get entity @e[type=skeleton,sort=nearest,limit=1] HandItems

## Villager Type
scoreboard players add @s[tag=villager_death] Type 0
execute as @s[tag=villager_death] if entity @e[type=villager,sort=nearest,limit=1,nbt={VillagerData:{type:"minecraft:desert"}},distance=..0.1] run scoreboard players set @s Type 1
execute as @s[tag=villager_death] if entity @e[type=villager,sort=nearest,limit=1,nbt={VillagerData:{type:"minecraft:savanna"}},distance=..0.1] run scoreboard players set @s Type 2
execute as @s[tag=villager_death] if entity @e[type=villager,sort=nearest,limit=1,nbt={VillagerData:{type:"minecraft:snow"}},distance=..0.1] run scoreboard players set @s Type 3
execute as @s[tag=villager_death] if entity @e[type=villager,sort=nearest,limit=1,nbt={VillagerData:{type:"minecraft:taiga"}},distance=..0.1] run scoreboard players set @s Type 4
execute as @s[tag=villager_death] if entity @e[type=villager,sort=nearest,limit=1,nbt={VillagerData:{type:"minecraft:jungle"}},distance=..0.1] run scoreboard players set @s Type 5
execute as @s[tag=villager_death] if entity @e[type=villager,sort=nearest,limit=1,nbt={VillagerData:{type:"minecraft:swamp"}},distance=..0.1] run scoreboard players set @s Type 6

scoreboard players add @s[tag=zombie_villager_death] Type 0
execute as @s[tag=zombie_villager_death] if entity @e[type=zombie_villager,sort=nearest,limit=1,nbt={VillagerData:{type:"minecraft:desert"}},distance=..0.1] run scoreboard players set @s Type 1
execute as @s[tag=zombie_villager_death] if entity @e[type=zombie_villager,sort=nearest,limit=1,nbt={VillagerData:{type:"minecraft:savanna"}},distance=..0.1] run scoreboard players set @s Type 2
execute as @s[tag=zombie_villager_death] if entity @e[type=zombie_villager,sort=nearest,limit=1,nbt={VillagerData:{type:"minecraft:snow"}},distance=..0.1] run scoreboard players set @s Type 3
execute as @s[tag=zombie_villager_death] if entity @e[type=zombie_villager,sort=nearest,limit=1,nbt={VillagerData:{type:"minecraft:taiga"}},distance=..0.1] run scoreboard players set @s Type 4
execute as @s[tag=zombie_villager_death] if entity @e[type=zombie_villager,sort=nearest,limit=1,nbt={VillagerData:{type:"minecraft:jungle"}},distance=..0.1] run scoreboard players set @s Type 5
execute as @s[tag=zombie_villager_death] if entity @e[type=zombie_villager,sort=nearest,limit=1,nbt={VillagerData:{type:"minecraft:swamp"}},distance=..0.1] run scoreboard players set @s Type 6


## IsBaby
scoreboard players set @s[tag=zombie_death] IsSpecial 0
execute as @s[tag=zombie_death] if entity @e[type=zombie,sort=nearest,limit=1,nbt={IsBaby:1b},distance=..0.1] run scoreboard players set @s IsSpecial 1

scoreboard players set @s[tag=husk_death] IsSpecial 0
execute as @s[tag=husk_death] if entity @e[type=husk,sort=nearest,limit=1,nbt={IsBaby:1b},distance=..0.1] run scoreboard players set @s IsSpecial 1

scoreboard players set @s[tag=drowned_death] IsSpecial 0
execute as @s[tag=drowned_death] if entity @e[type=drowned,sort=nearest,limit=1,nbt={IsBaby:1b},distance=..0.1] run scoreboard players set @s IsSpecial 1


execute as @s[tag=villager_death] unless entity @e[type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,nbt={Age:0},distance=..0.1] run scoreboard players set @s IsSpecial 1
execute as @s[tag=villager_death] if entity @e[type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,nbt={Age:0},distance=..0.1] run scoreboard players set @s IsSpecial 0

execute as @s[tag=animal_death] unless entity @e[type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,nbt={Age:0},distance=..0.1] run scoreboard players set @s IsSpecial 1
execute as @s[tag=animal_death] if entity @e[type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,nbt={Age:0},distance=..0.1] run scoreboard players set @s IsSpecial 0


## OnFire (needs rewrite)
scoreboard players set @s[tag=zombie_death] OnFire 0
execute as @s[tag=zombie_death] if entity @e[type=zombie,distance=..0.3] unless entity @e[type=zombie,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.5] run scoreboard players set @s OnFire 1
execute as @s[tag=zombie_death] if entity @e[type=zombie,distance=..0.3] if entity @e[type=zombie,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.9] run scoreboard players set @s OnFire 0

scoreboard players set @s[tag=zombie_villager_death] OnFire 0
execute as @s[tag=zombie_villager_death] if entity @e[type=zombie_villager,distance=..0.3] unless entity @e[type=zombie_villager,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.5] run scoreboard players set @s OnFire 1
execute as @s[tag=zombie_villager_death] if entity @e[type=zombie_villager,distance=..0.3] if entity @e[type=zombie_villager,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.9] run scoreboard players set @s OnFire 0

scoreboard players set @s[tag=husk_death] OnFire 0
execute as @s[tag=husk_death] if entity @e[type=husk,distance=..0.3] unless entity @e[type=husk,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.5] run scoreboard players set @s OnFire 1
execute as @s[tag=husk_death] if entity @e[type=husk,distance=..0.3] if entity @e[type=husk,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.9] run scoreboard players set @s OnFire 0

scoreboard players set @s[tag=drowned_death] OnFire 0
execute as @s[tag=drowned_death] if entity @e[type=drowned,distance=..0.3] unless entity @e[type=drowned,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.5] run scoreboard players set @s OnFire 1
execute as @s[tag=drowned_death] if entity @e[type=drowned,distance=..0.3] if entity @e[type=drowned,sort=nearest,limit=1,nbt={Fire:-1s},distance=..0.9] run scoreboard players set @s OnFire 0
