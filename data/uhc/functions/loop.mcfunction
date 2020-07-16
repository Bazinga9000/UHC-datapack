bossbar set minecraft:bossbar players @a

execute if score game_started uhc.internal matches 0 in minecraft:lobby run function uhc:lobby_loop
execute if score game_started uhc.internal matches 1 in minecraft:game run function uhc:game_loop
