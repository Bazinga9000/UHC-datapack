# reset unuseds
scoreboard players reset * uhc.team_alive
# tag all teamed players and remove all other players from their teams
# does not clear offline player teams
tag @a[team=spectator] add teamed
for i in 1..64 run tag @a[team=team$i] add teamed
team leave @a[tag=!teamed]
tag @a remove teamed