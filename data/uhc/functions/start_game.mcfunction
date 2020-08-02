# check if teams should be scrambled together
scoreboard players set respect_teams uhc.internal 1
execute if score sardines uhc.esoteric matches 1 run scoreboard players set respect_teams uhc.internal 0
# check if teams should be created
scoreboard players set make_teams uhc.internal 1
execute if score sardines uhc.esoteric matches 1 run scoreboard players set make_teams uhc.internal 0


scoreboard players set start_ok uhc.internal 1

# if teams are supposed to have been created, and they aren't, halt
execute if score make_teams uhc.internal matches 1 unless entity @a[team=team1] run tellraw @a[gamemode=creative] [{"text":"Teams have not been assigned. Press ","color":"red"},{"text":"[here] ","color":"blue","clickEvent":{"action":"run_command","value":"/function uhc:teams/assign"}},{"text":"to assign teams."}]
execute if score make_teams uhc.internal matches 1 unless entity @a[team=team1] run scoreboard players set start_ok uhc.internal 0

# if a necessary dimension doesn't exist, halt
execute store success score dim_game_exist uhc.internal in game run help me
execute store success score dim_gamen_exist uhc.internal in game_nether run help me
execute unless score dim_game_exist uhc.internal matches 1 run tellraw @a[gamemode=creative] [{"text": "Dimension game has not been created. Press ", "color":"red"},{"text":"[here] ","color":"blue","clickEvent":{"action":"run_command","value":"/mvcreate game NORMAL"}},{"text":"to create dimension game."}]
execute unless score dim_gamen_exist uhc.internal matches 1 run tellraw @a[gamemode=creative] [{"text": "Dimension game_nether has not been created. Press ", "color":"red"},{"text":"[here] ","color":"blue","clickEvent":{"action":"run_command","value":"/mvcreate game_nether NETHER"}},{"text":"to create dimension game_nether."}]
execute unless score dim_game_exist uhc.internal matches 1 run scoreboard players set start_ok uhc.internal 0
execute unless score dim_gamen_exist uhc.internal matches 1 run scoreboard players set start_ok uhc.internal 0

# if game's started, halt
execute unless score game_started uhc.internal matches 0 run tellraw @a[gamemode=creative] {"text": "Game has already started!", "color":"red"}
execute unless score game_started uhc.internal matches 0 run scoreboard players set start_ok uhc.internal 0

execute if score start_ok uhc.internal matches 1 run function uhc:event/game_start