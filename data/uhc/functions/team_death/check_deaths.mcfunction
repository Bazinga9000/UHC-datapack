data modify storage uhc dead_teams set value []
execute if score 1 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 1
execute if score 2 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 2
execute if score 3 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 3
execute if score 4 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 4
execute if score 5 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 5
execute if score 6 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 6
execute if score 7 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 7
execute if score 8 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 8
execute if score 9 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 9
execute if score 10 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 10
execute if score 11 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 11
execute if score 12 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 12
execute if score 13 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 13
execute if score 14 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 14
execute if score 15 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 15
execute if score 16 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 16
execute if score 17 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 17
execute if score 18 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 18
execute if score 19 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 19
execute if score 20 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 20
execute if score 21 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 21
execute if score 22 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 22
execute if score 23 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 23
execute if score 24 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 24
execute if score 25 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 25
execute if score 26 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 26
execute if score 27 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 27
execute if score 28 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 28
execute if score 29 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 29
execute if score 30 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 30
execute if score 31 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 31
execute if score 32 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 32
execute if score 33 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 33
execute if score 34 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 34
execute if score 35 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 35
execute if score 36 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 36
execute if score 37 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 37
execute if score 38 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 38
execute if score 39 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 39
execute if score 40 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 40
execute if score 41 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 41
execute if score 42 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 42
execute if score 43 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 43
execute if score 44 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 44
execute if score 45 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 45
execute if score 46 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 46
execute if score 47 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 47
execute if score 48 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 48
execute if score 49 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 49
execute if score 50 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 50
execute if score 51 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 51
execute if score 52 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 52
execute if score 53 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 53
execute if score 54 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 54
execute if score 55 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 55
execute if score 56 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 56
execute if score 57 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 57
execute if score 58 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 58
execute if score 59 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 59
execute if score 60 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 60
execute if score 61 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 61
execute if score 62 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 62
execute if score 63 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 63
execute if score 64 uhc.team_alive matches 0 run data modify storage uhc dead_teams append value 64

# check if list is empty
data modify storage uhc empty_check set value []
execute store success score list_not_empty uhc.internal run data modify storage uhc empty_check set from storage uhc dead_teams
execute if score list_not_empty uhc.internal matches 1 run function uhc:team_death/publicly_shame_everyone_in_team