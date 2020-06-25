tellraw @s ["",{"text":"-----------------------","color":"gold","bold":true}]
tellraw @s ["",{"text":"    UHC Configurator   ","color":"gold","bold":true}]
tellraw @s ["",{"text":" "},{"text":"[Start Game]","color":"green","clickEvent":{"action":"run_command","value":"/execute in minecraft:overworld run function uhc:start_game"}},{"text":" ","color":"none"},{"text":"[End Game]","color":"red","clickEvent":{"action":"run_command","value":"/function uhc:end_game"}}]
tellraw @s ""
tellraw @s ["",{"text":"     "},{"text":"[<<]","color":"aqua","clickEvent":{"action":"run_command","value":"/function uhc:decrement_team"}},{"text":" ","color":"none"},{"score":{"name":"num_teams","objective":"settings"},"color":"dark_green"},{"text":" Teams ","color":"dark_green"},{"text":"[>>]","color":"aqua","clickEvent":{"action":"run_command","value":"/function uhc:increment_team"}}]
tellraw @p ["",{"text":"        "},{"text":"[Solos]","color":"dark_blue","clickEvent":{"action":"run_command","value":"/function uhc:solos"}}]
tellraw @s ["",{"text":"    "},{"text":"[Randomize Teams]","color":"yellow","clickEvent":{"action":"run_command","value":"/function uhc:team_randomizer"}}]
tellraw @p ["",{"text":"        "},{"text":"[Clear Teams]","color":"white","clickEvent":{"action":"run_command","value":"/team leave @a[team=!spectator]"}}]
tellraw @s ""
tellraw @s ["",{"text":"-----------------------","color":"gold","bold":true}]
