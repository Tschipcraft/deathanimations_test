##by Tschipcraft

# Items
function deathanimations:summon/items

# Players
execute if entity @s[name="Steve"] run function deathanimations:player/players/steve


scoreboard players reset @s da_player_death
