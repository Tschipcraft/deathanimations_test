##by Tschipcraft

execute store result score $gamerule.send_feedback ts.da.settings run gamerule sendCommandFeedback

execute if score $gamerule.send_feedback ts.da.settings matches 1 run function deathanimations:settings/hide_feedback/hide
