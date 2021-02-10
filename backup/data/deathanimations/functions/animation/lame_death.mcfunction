execute as @e[tag=pig_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=pigbody] if score @e[tag=pigbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
execute as @e[tag=chicken_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=chickenbody] if score @e[tag=chickenbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
execute as @e[tag=cow_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=cowbody] if score @e[tag=cowbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
execute as @e[tag=sheep_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=sheepbody] if score @e[tag=sheepbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~

execute as @e[tag=villager_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=villagerbody,sort=nearest,limit=1] if score @e[tag=villagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
execute as @e[tag=vindicator_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=vindicatorbody,sort=nearest,limit=1] if score @e[tag=vindicatorbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
execute as @e[tag=evoker_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=evokerbody,sort=nearest,limit=1] if score @e[tag=evokerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
execute as @e[tag=pillager_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[tag=pillagerbody,sort=nearest,limit=1] if score @e[tag=pillagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~


execute as @e[tag=animal_death,scores={cooldown=1,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,10f]}}
execute as @e[tag=animal_death,scores={cooldown=2,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,20f]}}
execute as @e[tag=animal_death,scores={cooldown=3,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,30f]}}
execute as @e[tag=animal_death,scores={cooldown=4,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,40f]}}
execute as @e[tag=animal_death,scores={cooldown=5,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,50f]}}
execute as @e[tag=animal_death,scores={cooldown=6,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,60f]}}
execute as @e[tag=animal_death,scores={cooldown=7,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,70f]}}
execute as @e[tag=animal_death,scores={cooldown=8,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,80f]}}
execute as @e[tag=animal_death,scores={cooldown=9,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,90f]}}

execute as @e[tag=animal_death,scores={cooldown=9,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-90f]}}
execute as @e[tag=animal_death,scores={cooldown=1,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-10f]}}
execute as @e[tag=animal_death,scores={cooldown=2,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-20f]}}
execute as @e[tag=animal_death,scores={cooldown=3,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-30f]}}
execute as @e[tag=animal_death,scores={cooldown=4,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-40f]}}
execute as @e[tag=animal_death,scores={cooldown=5,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-50f]}}
execute as @e[tag=animal_death,scores={cooldown=6,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-60f]}}
execute as @e[tag=animal_death,scores={cooldown=7,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-70f]}}
execute as @e[tag=animal_death,scores={cooldown=8,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-80f]}}

execute as @e[tag=animal_death,scores={cooldown=9,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,90f]}}
execute as @e[tag=animal_death,scores={cooldown=1,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,10f]}}
execute as @e[tag=animal_death,scores={cooldown=2,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,20f]}}
execute as @e[tag=animal_death,scores={cooldown=3,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,30f]}}
execute as @e[tag=animal_death,scores={cooldown=4,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,40f]}}
execute as @e[tag=animal_death,scores={cooldown=5,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,50f]}}
execute as @e[tag=animal_death,scores={cooldown=6,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,60f]}}
execute as @e[tag=animal_death,scores={cooldown=7,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,70f]}}
execute as @e[tag=animal_death,scores={cooldown=8,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,80f]}}

execute as @e[tag=animal_death,scores={cooldown=9,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-90f]}}
execute as @e[tag=animal_death,scores={cooldown=1,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-10f]}}
execute as @e[tag=animal_death,scores={cooldown=2,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-20f]}}
execute as @e[tag=animal_death,scores={cooldown=3,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-30f]}}
execute as @e[tag=animal_death,scores={cooldown=4,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-40f]}}
execute as @e[tag=animal_death,scores={cooldown=5,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-50f]}}
execute as @e[tag=animal_death,scores={cooldown=6,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-60f]}}
execute as @e[tag=animal_death,scores={cooldown=7,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-70f]}}
execute as @e[tag=animal_death,scores={cooldown=8,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-80f]}}



execute as @e[tag=villager_like_death,scores={cooldown=9,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,90f]}}
execute as @e[tag=villager_like_death,scores={cooldown=1,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,10f]}}
execute as @e[tag=villager_like_death,scores={cooldown=2,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,20f]}}
execute as @e[tag=villager_like_death,scores={cooldown=3,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,30f]}}
execute as @e[tag=villager_like_death,scores={cooldown=4,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,40f]}}
execute as @e[tag=villager_like_death,scores={cooldown=5,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,50f]}}
execute as @e[tag=villager_like_death,scores={cooldown=6,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,60f]}}
execute as @e[tag=villager_like_death,scores={cooldown=7,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,70f]}}
execute as @e[tag=villager_like_death,scores={cooldown=8,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,80f]}}

execute as @e[tag=villager_like_death,scores={cooldown=9,death_rotation=0}] run data merge entity @s {Pose:{Head:[-90f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=1,death_rotation=0}] run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=2,death_rotation=0}] run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=3,death_rotation=0}] run data merge entity @s {Pose:{Head:[-30f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=4,death_rotation=0}] run data merge entity @s {Pose:{Head:[-40f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=5,death_rotation=0}] run data merge entity @s {Pose:{Head:[-50f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=6,death_rotation=0}] run data merge entity @s {Pose:{Head:[-60f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=7,death_rotation=0}] run data merge entity @s {Pose:{Head:[-70f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=8,death_rotation=0}] run data merge entity @s {Pose:{Head:[-80f,0f,0f]}}

execute as @e[tag=villager_like_death,scores={cooldown=9,death_rotation=1}] run data merge entity @s {Pose:{Head:[90f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=1,death_rotation=1}] run data merge entity @s {Pose:{Head:[10f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=2,death_rotation=1}] run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=3,death_rotation=1}] run data merge entity @s {Pose:{Head:[30f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=4,death_rotation=1}] run data merge entity @s {Pose:{Head:[40f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=5,death_rotation=1}] run data merge entity @s {Pose:{Head:[50f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=6,death_rotation=1}] run data merge entity @s {Pose:{Head:[60f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=7,death_rotation=1}] run data merge entity @s {Pose:{Head:[70f,0f,0f]}}
execute as @e[tag=villager_like_death,scores={cooldown=8,death_rotation=1}] run data merge entity @s {Pose:{Head:[80f,0f,0f]}}

execute as @e[tag=villager_like_death,scores={cooldown=9,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-90f]}}
execute as @e[tag=villager_like_death,scores={cooldown=1,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-10f]}}
execute as @e[tag=villager_like_death,scores={cooldown=2,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-20f]}}
execute as @e[tag=villager_like_death,scores={cooldown=3,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-30f]}}
execute as @e[tag=villager_like_death,scores={cooldown=4,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-40f]}}
execute as @e[tag=villager_like_death,scores={cooldown=5,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-50f]}}
execute as @e[tag=villager_like_death,scores={cooldown=6,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-60f]}}
execute as @e[tag=villager_like_death,scores={cooldown=7,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-70f]}}
execute as @e[tag=villager_like_death,scores={cooldown=8,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-80f]}}

kill @e[tag=villager_like_death,scores={cooldown=1000..}]

kill @e[tag=animal_death,scores={cooldown=1000..}]