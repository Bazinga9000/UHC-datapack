scoreboard players set gend_exists uhc.internal -1
execute if score game_started uhc.internal matches 1 store success score gend_exists uhc.internal run function uhc:event/game_end
execute if score gend_exists uhc.internal matches 0 run function uhc:fallback/game_end

#> Error notification
execute unless score game_started uhc.internal matches 1 run tellraw @a[gamemode=creative] {"text": "Game has not started!", "color":"red"}