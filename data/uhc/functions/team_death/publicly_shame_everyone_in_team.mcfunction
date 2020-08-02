data modify storage uhc deathmsg set value ['{"text":" has been completely eliminated!","color":"white"}']
# pop first of uhc dead_teams and read
execute store result score current_dt uhc.internal run data get storage uhc dead_teams[0]
data remove storage uhc dead_teams[0]

let i = current_dt uhc.internal run data modify storage uhc deathmsg prepend from storage uhc team_names[$i]

tellraw @a [{"nbt":"deathmsg[0]","storage":"uhc","interpret":true},{"nbt":"deathmsg[1]","storage":"uhc","interpret":true}]

let i = current_dt uhc.internal run scoreboard players set $i uhc.team_alive -1

# check if list is empty
data modify storage uhc empty_check set value []
execute store success score list_not_empty uhc.internal run data modify storage uhc empty_check set from storage uhc dead_teams
execute unless data storage uhc dead_teams run scoreboard players set list_not_empty uhc.internal 0
execute if score list_not_empty uhc.internal matches 1 run function uhc:team_death/publicly_shame_everyone_in_team