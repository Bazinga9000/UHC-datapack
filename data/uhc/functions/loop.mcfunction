bossbar set minecraft:bossbar players @a

execute if score game_started settings matches 1 run function uhc:game_loop
execute if score game_started settings matches 0 in minecraft:overworld run function uhc:lobby_loop
