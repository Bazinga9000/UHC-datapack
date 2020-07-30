advancement revoke @a everything
function uhc:teams/clear
scoreboard objectives setdisplay sidebar pcheckpoint
scoreboard players set game_started uhc.internal 0
cmd mvload lobby
clear @a
bossbar set minecraft:bossbar visible false
