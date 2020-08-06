execute unless score soft_clear uhc.stsetting matches 1 run team leave *
execute if score soft_clear uhc.stsetting matches 1 run function uhc:teams/soft_clear

execute as @a[tag=spectator] run team join spectator
execute unless score mafia_rand uhc.stsetting matches 1 run function uhc:teams/randomize
execute if score mafia_rand uhc.stsetting matches 1 run function uhc:esoteric/mafia_randomize

execute if score announce_teams uhc.stsetting matches 1 run function uhc:teams/announce