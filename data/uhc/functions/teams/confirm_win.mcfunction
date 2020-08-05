# get the alive team
execute store result score pot_win_team uhc.internal run data get storage uhc alive_teams[0]
let i = pot_win_team uhc.internal run execute store success score is_win uhc.internal unless entity @a[team=!team$i,gamemode=!creative,gamemode=!spectator]

execute if score is_win uhc.internal matches 1 run function uhc:event/win