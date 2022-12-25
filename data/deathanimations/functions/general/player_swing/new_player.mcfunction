##by Tschipcraft
# Adds a new swing motion detector for a new player

summon marker ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:[da_player_swing],CustomName:'{"text":"Player Swing Detector"}'}

scoreboard players add .player da_sid 1
scoreboard players operation @e[type=minecraft:marker,tag=da_player_swing,limit=1,sort=arbitrary] da_sid = .player da_sid
scoreboard players operation @s da_sid = .player da_sid
