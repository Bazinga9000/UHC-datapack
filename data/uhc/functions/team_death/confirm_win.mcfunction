# get the alive team
for i in 1..64 run execute if score $i uhc.team_alive matches 1.. run scoreboard players set pot_win_team uhc.internal $i
let i = pot_win_team uhc.internal run execute store success score is_win uhc.internal if entity @a[team=!team$i]

execute if score is_win uhc.internal matches 1 run function uhc:event/win