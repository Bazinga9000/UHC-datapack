#> Error notification
execute unless score game_started uhc.internal matches 1 run tellraw @s {"text": "ERR: Game has not started!", "color":"red"}

#> End game if no errors
execute if score game_started uhc.internal matches 1 run function uhc:event/game_end