bossbar set minecraft:bossbar players @a

execute if score game_started uhc.internal matches 0 in minecraft:overworld run function uhc:lobby_loop
execute if score game_started uhc.internal matches 1 run function uhc:game_loop
