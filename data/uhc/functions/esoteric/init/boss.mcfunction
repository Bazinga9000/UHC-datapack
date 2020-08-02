execute store result score boss_t1_players uhc.internal if entity @a[team=team1]

# get total health of team 2
execute store result score boss_health uhc.internal if entity @a[team=team2]
execute store result score boss_norplhel uhc.internal run attribute @a[team=team2, limit=1] generic.max_health get
scoreboard players operation boss_health uhc.internal *= boss_norplhel uhc.internal

# div by # of bosses
scoreboard players operation boss_health uhc.internal *= 10 constants
scoreboard players operation boss_health uhc.internal /= boss_t1_players uhc.internal

execute as @a[team=team1] run let h = boss_health uhc.internal 0.1 run attribute @s generic.max_health base set $h
