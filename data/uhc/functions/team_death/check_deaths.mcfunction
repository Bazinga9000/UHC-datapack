# count the amount of people alive in each team
for i in 1..64 run execute unless score $i uhc.team_alive matches -1 store result score $i uhc.team_alive if entity @a[team=team$i,gamemode=survival]

# get list of dead teams
data modify storage uhc dead_teams set value []
for i in 1..64 run execute if score $i uhc.team_alive matches 0 run data modify storage uhc dead_teams append value $i

# check if list is empty
data modify storage uhc empty_check set value []
execute store success score list_not_empty uhc.internal run data modify storage uhc empty_check set from storage uhc dead_teams
execute if score list_not_empty uhc.internal matches 1 run function uhc:team_death/publicly_shame_everyone_in_team