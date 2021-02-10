scoreboard players add @e[tag=explode,type=phantom] age 1

execute as @e[tag=explode,type=phantom] at @s run particle minecraft:large_smoke ~ ~2 ~ 1 0 1 0.8 10 normal
execute as @e[tag=explode,type=phantom,scores={age=24..}] at @s run particle minecraft:explosion ~ ~2 ~ 3 1 3 0.8 10 normal
execute as @e[tag=explode,type=phantom,scores={age=4}] at @s run playsound minecraft:entity.ravager.roar ambient @a ~ ~ ~ 1000 0.4
execute as @e[tag=explode,type=phantom,scores={age=22}] at @s run playsound minecraft:entity.phantom.death ambient @a ~ ~ ~ 1000 0

execute as @e[tag=explode,type=phantom,scores={age=2}] run data merge entity @s {Size:2}
execute as @e[tag=explode,type=phantom,scores={age=4}] run data merge entity @s {Size:3}
execute as @e[tag=explode,type=phantom,scores={age=6}] run data merge entity @s {Size:4}
execute as @e[tag=explode,type=phantom,scores={age=8}] run data merge entity @s {Size:5}
execute as @e[tag=explode,type=phantom,scores={age=10}] run data merge entity @s {Size:6}
execute as @e[tag=explode,type=phantom,scores={age=12}] run data merge entity @s {Size:7}
execute as @e[tag=explode,type=phantom,scores={age=14}] run data merge entity @s {Size:8}
execute as @e[tag=explode,type=phantom,scores={age=16}] run data merge entity @s {Size:9}
##execute as @e[tag=explode,type=phantom,scores={age=26}] run data merge entity @s {Tags:[Invisible,explode]}
##execute as @e[tag=explode,type=phantom,scores={age=26}] at @s run team join phantom @s
##execute as @e[tag=explode,type=phantom,scores={age=26}] at @s run team join phantom @a[distance=..20]

execute as @e[tag=explode,type=phantom,scores={age=18}] run data merge entity @s {Size:10}
execute as @e[tag=explode,type=phantom,scores={age=20}] run data merge entity @s {Size:11}
execute as @e[tag=explode,type=phantom,scores={age=22}] run data merge entity @s {Size:12}
execute as @e[tag=explode,type=phantom,scores={age=24}] run data merge entity @s {Size:13}
execute as @e[tag=explode,type=phantom,scores={age=26}] run data merge entity @s {Size:14}
execute as @e[tag=explode,type=phantom,scores={age=28}] run data merge entity @s {Size:15}



kill @e[tag=explode,type=phantom,scores={age=30..}]