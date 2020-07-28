advancement revoke @a everything
function uhc:teams/clear
scoreboard players set game_started uhc.internal 0
bossbar set minecraft:bossbar visible false
tellraw @a[gamemode=creative] [{"text":"Press ","color":"red"},{"text":"[here] ","color":"blue","clickEvent":{"action":"run_command","value":"/mvload lobby"}},{"text":"to teleport back to lobby."}]
