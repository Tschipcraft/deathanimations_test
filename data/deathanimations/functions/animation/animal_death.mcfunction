## by Tschipcraft

#execute as @s[tag=pig_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=pigbody] if score @e[type=#deathanimations:marker_entities,tag=pigbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
#execute as @s[tag=chicken_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=chickenbody] if score @e[type=#deathanimations:marker_entities,tag=chickenbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
#execute as @s[tag=cow_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=cowbody] if score @e[type=#deathanimations:marker_entities,tag=cowbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
#execute as @s[tag=sheep_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=sheepbody] if score @e[type=#deathanimations:marker_entities,tag=sheepbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~


execute as @s[scores={cooldown=1,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,10f]}}
execute as @s[scores={cooldown=2,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,20f]}}
execute as @s[scores={cooldown=3,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,30f]}}
execute as @s[scores={cooldown=4,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,40f]}}
execute as @s[scores={cooldown=5,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,50f]}}
execute as @s[scores={cooldown=6,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,60f]}}
execute as @s[scores={cooldown=7,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,70f]}}
execute as @s[scores={cooldown=8,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,80f]}}
execute as @s[scores={cooldown=9,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,90f]}}

execute as @s[scores={cooldown=9,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-90f]}}
execute as @s[scores={cooldown=1,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-10f]}}
execute as @s[scores={cooldown=2,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-20f]}}
execute as @s[scores={cooldown=3,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-30f]}}
execute as @s[scores={cooldown=4,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-40f]}}
execute as @s[scores={cooldown=5,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-50f]}}
execute as @s[scores={cooldown=6,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-60f]}}
execute as @s[scores={cooldown=7,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-70f]}}
execute as @s[scores={cooldown=8,death_rotation=0}] run data merge entity @s {Pose:{Head:[0f,0f,-80f]}}

execute as @s[scores={cooldown=9,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,90f]}}
execute as @s[scores={cooldown=1,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,10f]}}
execute as @s[scores={cooldown=2,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,20f]}}
execute as @s[scores={cooldown=3,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,30f]}}
execute as @s[scores={cooldown=4,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,40f]}}
execute as @s[scores={cooldown=5,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,50f]}}
execute as @s[scores={cooldown=6,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,60f]}}
execute as @s[scores={cooldown=7,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,70f]}}
execute as @s[scores={cooldown=8,death_rotation=1}] run data merge entity @s {Pose:{Head:[0f,0f,80f]}}

execute as @s[scores={cooldown=9,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-90f]}}
execute as @s[scores={cooldown=1,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-10f]}}
execute as @s[scores={cooldown=2,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-20f]}}
execute as @s[scores={cooldown=3,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-30f]}}
execute as @s[scores={cooldown=4,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-40f]}}
execute as @s[scores={cooldown=5,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-50f]}}
execute as @s[scores={cooldown=6,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-60f]}}
execute as @s[scores={cooldown=7,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-70f]}}
execute as @s[scores={cooldown=8,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-80f]}}
