##by Tschipcraft

# Body parts
execute store result score global entity_count run execute if entity @e[type=#deathanimations:marker_entities,tag=visual]
execute store result score low_p_entities entity_count run execute if entity @e[type=#deathanimations:marker_entities,tag=low_p_mode]
execute store result score fading entity_count run execute if entity @e[type=#deathanimations:marker_entities,scores={timeout_parts=500..}]

scoreboard players operation total entity_count = global entity_count
scoreboard players operation total entity_count += low_p_entities entity_count

# Events
execute store result score events entity_count run execute if entity @e[type=minecraft:area_effect_cloud,tag=d_a_p]

# Ragdolls
execute store result score ragdolls entity_count run execute if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll]
execute store result score ragdoll_low_p entity_count run execute if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_visual_nom]
execute store result score ragdoll_whole_total entity_count run execute if entity @e[type=#deathanimations:ragdoll_entities,tag=ragdoll_core]

scoreboard players operation ragdoll_total entity_count = ragdolls entity_count
scoreboard players operation ragdoll_total entity_count += ragdoll_low_p entity_count

# Parsed entities
execute store result score entity_w_a entity_count run execute if entity @e[scores={initalise=0..}]


# Message
tellraw @s [{"text":"\n"},{"text":"Stats:","bold":true,"underlined":true,"color":"red"},{"text":"\n\n"},{"text":"Body Parts: ","color":"aqua"},{"score":{"name":"total","objective":"entity_count"},"color":"gold"},{"text":" ("},{"score":{"name":"global","objective":"entity_count"},"color":"gold"},{"text":" actively ticked; "},{"score":{"name":"low_p_entities","objective":"entity_count"},"color":"gold"},{"text":" not ticked; "},{"score":{"name":"fading","objective":"entity_count"},"color":"gold"},{"text":" fading away)\n"},{"text":"Events: ","color":"aqua"},{"score":{"name":"events","objective":"entity_count"},"color":"gold"},{"text":"\n"},{"text":"Ragdoll entities: ","color":"aqua"},{"score":{"name":"ragdoll_total","objective":"entity_count"},"color":"gold"},{"text":" (","color":"white"},{"score":{"name":"ragdolls","objective":"entity_count"},"color":"gold"},{"text":" actively ticked; "},{"score":{"name":"ragdoll_low_p","objective":"entity_count"},"color":"gold"},{"text":" not ticked; "},{"score":{"name":"ragdoll_whole_total","objective":"entity_count"},"color":"gold"},{"text":" ragdolls total"},{"text":")","color":"white"},{"text":"\n"},{"text":"Parsed entities: ","color":"aqua"},{"score":{"name":"entity_w_a","objective":"entity_count"},"color":"gold"},{"text":"\n"},{"text":"Resource Pack version: ","color":"aqua"},{"translate":"❌ Resource Pack is not installed!","color":"red"},{"translate":" - outdated; should be v1.4","color":"red"},{"text":"\n"}]

## Warnings
execute if score Global part_lifetime matches 3 run tellraw @s [{"text":"\u26a0 Body part duration is set to infinite! ","color":"red"},{"text":"Click here to change","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click here"}]},"clickEvent":{"action":"run_command","value":"/trigger settings"}}]

execute if score total entity_count matches 200..450 run tellraw @s {"text":"\u26a0 There are a lot of body parts!","color":"red"}
execute if score total entity_count matches 450.. run tellraw @s {"text":"\u26a0 There are A LOT of body parts!","color":"red"}

execute if score events entity_count matches 60.. run tellraw @s {"text":"\u26a0 There are a lot of events! (Could be caused by iron golems/ravagers/projectiles)","color":"red"}

execute store result storage d_a:compatibility mob_loot byte 1 run gamerule doMobLoot
execute if data storage d_a:compatibility {mob_loot:0b} run tellraw @s [{"text":"\u26a0 Gamerule doMobLoot is set to false! ","color":"red"},{"text":"Click here to fix","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click here"}]},"clickEvent":{"action":"run_command","value":"/gamerule doMobLoot true"}}]
