data modify storage uhc alive_teams set value []
for i in 1..64 run execute if score $i uhc.team_alive matches 1.. run data modify storage uhc alive_teams append value $i

execute store result score alive_teams_count uhc.internal run data get storage uhc alive_teams
execute if score alive_teams_count uhc.internal matches 1 run function uhc:teams/confirm_win