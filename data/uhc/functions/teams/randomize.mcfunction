let a = rand_min uhc.internal run let b = num_teams uhc.cfg run for i in $a..$b run team join team$i @r[team=]
execute if entity @a[team=] run function uhc:teams/randomize
