execute as @a run team leave @s
# reset unuseds
function uhc:teams/clear

execute as @a[tag=spectator] run team join spectator
function uhc:teams/randomize
function uhc:teams/announce

# mark unused teams
for i in 1..64 run execute unless entity @a[team=team$i] run scoreboard players set $i uhc.team_alive -1