execute if score game_started uhc.internal matches 1 run function uhc:event/game_end

#> Error notification
execute unless score game_started uhc.internal matches 1 run tellraw @a[gamemode=creative] {"text": "Game has not started!", "color":"red"}