## by Tschipcraft

#execute as @s[tag=villager_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=villagerbody,sort=nearest,limit=1] if score @e[type=#deathanimations:marker_entities,tag=villagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
#execute as @s[tag=vindicator_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=vindicatorbody,sort=nearest,limit=1] if score @e[type=#deathanimations:marker_entities,tag=vindicatorbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
#execute as @s[tag=evoker_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=evokerbody,sort=nearest,limit=1] if score @e[type=#deathanimations:marker_entities,tag=evokerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~
#execute as @s[tag=pillager_death,scores={cooldown=1..}] at @s positioned ~ ~1.4 ~ at @e[type=#deathanimations:marker_entities,tag=pillagerbody,sort=nearest,limit=1] if score @e[type=#deathanimations:marker_entities,tag=pillagerbody,sort=nearest,limit=1] cooldown = @s cooldown run tp @s ~ ~-1.4 ~


execute as @s[scores={cooldown=9,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,90f]}}
execute as @s[scores={cooldown=1,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,10f]}}
execute as @s[scores={cooldown=2,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,20f]}}
execute as @s[scores={cooldown=3,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,30f]}}
execute as @s[scores={cooldown=4,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,40f]}}
execute as @s[scores={cooldown=5,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,50f]}}
execute as @s[scores={cooldown=6,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,60f]}}
execute as @s[scores={cooldown=7,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,70f]}}
execute as @s[scores={cooldown=8,death_rotation=3}] run data merge entity @s {Pose:{Head:[0f,0f,80f]}}

execute as @s[scores={cooldown=9,death_rotation=0}] run data merge entity @s {Pose:{Head:[-90f,0f,0f]}}
execute as @s[scores={cooldown=1,death_rotation=0}] run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute as @s[scores={cooldown=2,death_rotation=0}] run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute as @s[scores={cooldown=3,death_rotation=0}] run data merge entity @s {Pose:{Head:[-30f,0f,0f]}}
execute as @s[scores={cooldown=4,death_rotation=0}] run data merge entity @s {Pose:{Head:[-40f,0f,0f]}}
execute as @s[scores={cooldown=5,death_rotation=0}] run data merge entity @s {Pose:{Head:[-50f,0f,0f]}}
execute as @s[scores={cooldown=6,death_rotation=0}] run data merge entity @s {Pose:{Head:[-60f,0f,0f]}}
execute as @s[scores={cooldown=7,death_rotation=0}] run data merge entity @s {Pose:{Head:[-70f,0f,0f]}}
execute as @s[scores={cooldown=8,death_rotation=0}] run data merge entity @s {Pose:{Head:[-80f,0f,0f]}}

execute as @s[scores={cooldown=9,death_rotation=1}] run data merge entity @s {Pose:{Head:[90f,0f,0f]}}
execute as @s[scores={cooldown=1,death_rotation=1}] run data merge entity @s {Pose:{Head:[10f,0f,0f]}}
execute as @s[scores={cooldown=2,death_rotation=1}] run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute as @s[scores={cooldown=3,death_rotation=1}] run data merge entity @s {Pose:{Head:[30f,0f,0f]}}
execute as @s[scores={cooldown=4,death_rotation=1}] run data merge entity @s {Pose:{Head:[40f,0f,0f]}}
execute as @s[scores={cooldown=5,death_rotation=1}] run data merge entity @s {Pose:{Head:[50f,0f,0f]}}
execute as @s[scores={cooldown=6,death_rotation=1}] run data merge entity @s {Pose:{Head:[60f,0f,0f]}}
execute as @s[scores={cooldown=7,death_rotation=1}] run data merge entity @s {Pose:{Head:[70f,0f,0f]}}
execute as @s[scores={cooldown=8,death_rotation=1}] run data merge entity @s {Pose:{Head:[80f,0f,0f]}}

execute as @s[scores={cooldown=9,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-90f]}}
execute as @s[scores={cooldown=1,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-10f]}}
execute as @s[scores={cooldown=2,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-20f]}}
execute as @s[scores={cooldown=3,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-30f]}}
execute as @s[scores={cooldown=4,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-40f]}}
execute as @s[scores={cooldown=5,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-50f]}}
execute as @s[scores={cooldown=6,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-60f]}}
execute as @s[scores={cooldown=7,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-70f]}}
execute as @s[scores={cooldown=8,death_rotation=2}] run data merge entity @s {Pose:{Head:[0f,0f,-80f]}}
