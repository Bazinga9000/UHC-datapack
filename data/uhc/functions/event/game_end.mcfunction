advancement revoke @a everything
function uhc:teams/clear
scoreboard players set game_started uhc.internal 0
cmd mvload lobby
bossbar set minecraft:bossbar visible false
