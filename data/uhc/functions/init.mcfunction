scoreboard objectives add spawned dummy
scoreboard objectives add health health {"text":"♥","color":"red"}
scoreboard objectives setdisplay list health
team add spectator
team modify spectator prefix {"text":"Spectator ","color":"aqua","italic":"true"}
function uhc:createteams 
gamerule spawnRadius 0
scoreboard objectives add constants dummy
scoreboard players set warn1 constants 36000
scoreboard players set warn2 constants 54000
scoreboard players set warn3 constants 66000
scoreboard players set border1 constants 72000
scoreboard players set borderstop constants 90000
scoreboard players set border2 constants 96000
scoreboard players set dmwarn constants 108000
scoreboard players set deathmatch constants 114000
scoreboard objectives setdisplay belowName health
worldborder center 0.5 0.5
scoreboard objectives add bossbar dummy
bossbar add bossbar {"text":"World Border Begins Shrinking","color":"red"}
bossbar set minecraft:bossbar color red
execute store result score max bossbar run scoreboard players get border1 constants
scoreboard players set min bossbar 0
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar visible false
bossbar set minecraft:bossbar name {"text":"World Border Begins Shrinking","color":"red"}
function uhc:constants
scoreboard objectives add settings dummy
scoreboard players set num_teams settings 4
scoreboard players set display_worldborder_distance settings 0
scoreboard players set min_teams settings 2
scoreboard players set max_teams settings 64
scoreboard players set game_started settings 0
scoreboard objectives add worldborder dummy
scoreboard players set worldborder_start_distance worldborder 1200
scoreboard players set worldborder_time worldborder 900
scoreboard players set worldborder_end_distance worldborder 25
scoreboard players set worldborder_start_time worldborder 0

