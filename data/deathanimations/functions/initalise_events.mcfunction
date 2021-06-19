## by Tschipcraft

execute as @s[type=player] as @e[type=#deathanimations:projectiles,type=!trident,nbt={inGround:0b},distance=..15] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[arrow,d_a_p],Radius:0f,RadiusPerTick:0f,Duration:9}
execute as @s[type=player] as @e[type=trident,nbt={inGround:0b},distance=..25] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[arrow,d_a_p],Radius:0f,RadiusPerTick:0f,Duration:9}
execute as @s[type=player] as @e[type=tnt,distance=..25] at @s unless entity @e[type=#deathanimations:marker_entities,tag=d_a_p,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[explosion,d_a_p],Radius:0f,RadiusPerTick:0f,Duration:22}
execute as @s[type=player] as @e[type=iron_golem,distance=..40] at @s unless entity @e[type=#deathanimations:marker_entities,tag=d_a_p,distance=..5] run summon minecraft:area_effect_cloud ~ ~0.3 ~ {Tags:[iron_golem,d_a_p],Radius:0f,RadiusPerTick:0f,Duration:2}
execute as @s[type=player] as @e[type=ravager,distance=..40] at @s unless entity @e[type=#deathanimations:marker_entities,tag=d_a_p,distance=..5] run summon minecraft:area_effect_cloud ~ ~0.3 ~ {Tags:[ravager,d_a_p],Radius:0f,RadiusPerTick:0f,Duration:2}

execute as @s[type=player] as @e[type=creeper,distance=..25] run effect give @s minecraft:unluck 10 69 true

execute as @e[type=minecraft:area_effect_cloud,nbt={Effects:[{Id:27b,Amplifier:69b}]}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[explosion,d_a_p],Radius:0f,RadiusPerTick:0f,Duration:4}
execute as @e[type=minecraft:area_effect_cloud,nbt={Effects:[{Id:27b,Amplifier:69b}]}] at @s run function deathanimations:summon_creeper
