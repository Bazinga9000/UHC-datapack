advancement revoke @a everything
function uhc:teams/clear
#REQUIRES PLUGIN
cmd mvload lobby
scoreboard players set game_started uhc.internal 0
bossbar set minecraft:bossbar visible false
