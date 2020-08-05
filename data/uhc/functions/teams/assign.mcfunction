execute unless score soft_clear uhc.internal matches 1 run team leave *
execute if score soft_clear uhc.internal matches 1 run function uhc:teams/soft_clear

execute as @a[tag=spectator] run team join spectator
function uhc:teams/randomize
execute if score announce_teams uhc.internal matches 1 run function uhc:teams/announce