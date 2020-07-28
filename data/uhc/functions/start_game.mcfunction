execute store success score dim_game_exist uhc.internal in game run help me
execute store success score dim_gamen_exist uhc.internal in game_nether run help me

scoreboard players set gstart_exists uhc.internal -1
execute if score game_started uhc.internal matches 0 if score dim_game_exist uhc.internal matches 1 if score dim_gamen_exist uhc.internal matches 1 if entity @a[team=team1] store success score gstart_exists uhc.internal run function uhc:event/game_start
execute if score gstart_exists uhc.internal matches 0 run function uhc:fallback/game_start

#> Error notification
execute unless entity @a[team=team1] run tellraw @a[gamemode=creative] {"text":"Teams have not been assigned.","color":"red"}
execute unless entity @a[team=team1] run tellraw @a[gamemode=creative] [{"text":"Press ","color":"red"},{"text":"[here] ","color":"blue","clickEvent":{"action":"run_command","value":"/function uhc:teams/assign"}},{"text":"to assign teams."}]
execute unless score dim_game_exist uhc.internal matches 1 run tellraw @a[gamemode=creative] {"text": "Dimension game has not been created.", "color":"red"}
execute unless score dim_game_exist uhc.internal matches 1 run tellraw @a[gamemode=creative] [{"text":"Press ","color":"red"},{"text":"[here] ","color":"blue","clickEvent":{"action":"run_command","value":"/mvcreate game NORMAL"}},{"text":"to create dimension game."}]
execute unless score dim_gamen_exist uhc.internal matches 1 run tellraw @a[gamemode=creative] {"text": "Dimension game_nether has not been created.", "color":"red"}
execute unless score dim_gamen_exist uhc.internal matches 1 run tellraw @a[gamemode=creative] [{"text":"Press ","color":"red"},{"text":"[here] ","color":"blue","clickEvent":{"action":"run_command","value":"/mvcreate game_nether NETHER"}},{"text":"to create dimension game_nether."}]
execute unless score game_started uhc.internal matches 0 run tellraw @a[gamemode=creative] {"text": "Game has already started!", "color":"red"}