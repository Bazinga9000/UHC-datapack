execute store result score sardines_players_unteamed uhc.internal if entity @a[team=]
execute if score sardines_players_unteamed uhc.internal matches 1 as @a[team=] at @s run function uhc:esoteric/sardines_gen_1p

execute as @a[team=] at @s if entity @a[distance=1..10, team=] run tag @s add sardine
execute as @r[tag=sardine] run function uhc:esoteric/sardines_gen_team