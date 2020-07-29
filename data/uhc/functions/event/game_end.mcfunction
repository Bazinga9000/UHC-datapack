advancement revoke @a everything
function uhc:teams/clear
scoreboard players set game_started uhc.internal 0
execute as @a in minecraft:lobby run tp @s 0 10 0
bossbar set minecraft:bossbar visible false
