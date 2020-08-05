# pop first of uhc dead_teams and read
execute store result score current_dt uhc.internal run data get storage uhc dead_teams[0]
data remove storage uhc dead_teams[0]

let i = current_dt uhc.internal run tellraw @a [{"nbt":"team_names[$i]","storage":"uhc","interpret":true},{"text":" has been completely eliminated!","color":"white"}]
let i = current_dt uhc.internal run scoreboard players set $i uhc.team_alive -1

# check if list is empty
data modify storage uhc empty_check set value []
execute store success score list_not_empty uhc.internal run data modify storage uhc empty_check set from storage uhc dead_teams
execute unless data storage uhc dead_teams run scoreboard players set list_not_empty uhc.internal 0
execute if score list_not_empty uhc.internal matches 1 run function uhc:teams/publicly_shame_everyone_in_team