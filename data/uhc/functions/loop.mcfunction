execute store success score game_started uhc.internal run hasstarted
execute if score game_started uhc.internal matches 0 in minecraft:lobby run function uhc:lobby_loop
