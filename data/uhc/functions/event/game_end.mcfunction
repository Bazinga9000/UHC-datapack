advancement revoke @a everything
function uhc:teams/clear
scoreboard objectives setdisplay sidebar pcheckpoint
scoreboard players set game_started uhc.internal 0
cmd mvload lobby
clear @a
bossbar set minecraft:bossbar visible false

execute as @a run attribute @s generic.max_health base set 20
execute as @a run attribute @s generic.attack_speed base set 4
execute as @a run attribute @s generic.movement_speed modifier remove 74141e10-119e-4dc2-8dbf-1cb3ec7ba672