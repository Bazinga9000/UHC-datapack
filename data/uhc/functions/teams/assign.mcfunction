execute as @a run team leave @s
execute unless score soft_clear uhc.internal matches 1 run function uhc:teams/clear
execute if score soft_clear uhc.internal matches 1 run function uhc:teams/soft_clear

execute as @a[tag=spectator] run team join spectator

scoreboard players set rand_min uhc.internal 1
#i'm too lazy to set this up with uhc:esoteric/start_settings
execute if score boss uhc.esoteric matches 1 run scoreboard players set rand_min uhc.internal 2
function uhc:teams/randomize
function uhc:teams/announce

# mark unused teams
for i in 1..64 run execute unless entity @a[team=team$i] run scoreboard players set $i uhc.team_alive -1