scoreboard players operation net_distance worldborder = worldborder_start_distance worldborder
scoreboard players operation net_distance worldborder -= worldborder_end_distance worldborder
scoreboard players operation delta_time worldborder = time timer
scoreboard players operation delta_time worldborder -= worldborder_start_time worldborder
scoreboard players operation net_distance worldborder *= delta_time worldborder
scoreboard players operation net_distance worldborder /= worldborder_time worldborder
scoreboard players operation distance_to_origin worldborder = worldborder_start_distance worldborder
scoreboard players operation distance_to_origin worldborder -= net_distance worldborder
scoreboard players operation distance_to_origin worldborder /= 2 constants
title @a actionbar ["",{"text":"The World Border is currently ±","color":"gold","bold":true},{"score":{"name":"distance_to_origin","objective":"worldborder"},"color":"red","bold":false},{"text":" blocks from the origin!","color":"gold","bold":true}]
