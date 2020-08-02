execute if score sardines_players_unteamed uhc.internal matches 1 run tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":true},{"selector":"@s","color":"red","italic":true},{"text":" has no one else to team with. Ha.","color":"red","italic":true}]
execute unless score sardines_players_unteamed uhc.internal matches 1 run tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":true},{"selector":"@s","color":"red","italic":true},{"text":" and ","color":"red","italic":true},{"text":"@a[distance=1..10, sort=nearest, limit=1]","color":"red","italic":true},{"text":" have joined forces!","color":"red","italic":true}]

scoreboard players add sardines_num_teams uhc.internal 1
let i = sardines_num_teams uhc.internal run team join team$i @a[team=, distance=..10, limit=2]
let i = sardines_num_teams uhc.internal run scoreboard players set $i uhc.team_alive 2
