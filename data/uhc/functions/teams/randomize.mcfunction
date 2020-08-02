let a = rand_min uhc.internal run for i in $a..64 run execute if score num_teams uhc.cfg matches $i.. run team join team$i @r[team=]
execute if entity @a[team=] run function uhc:teams/randomize
