tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":true},{"selector":"@s","color":"red","italic":true},{"text":" has no one else to team with. Ha.","color":"red","italic":true}]
scoreboard players add sardines_num_teams uhc.internal 1
let i = sardines_num_teams uhc.internal run team join team$i
let i = sardines_num_teams uhc.internal run scoreboard players set $i uhc.team_alive 1