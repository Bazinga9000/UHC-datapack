#> scoreboard inits
scoreboard objectives add spawned dummy
scoreboard objectives add health health {"text":"♥","color":"red"}
scoreboard objectives setdisplay list health
scoreboard objectives setdisplay belowName health
scoreboard objectives add constants dummy
scoreboard objectives add bossbar dummy
scoreboard objectives add settings dummy
scoreboard objectives add cfg dummy
scoreboard objectives add worldborder dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add timer dummy
scoreboard objectives add saturation dummy

scoreboard players set num_teams settings 4
scoreboard players set display_worldborder_distance settings 0
scoreboard players set min_teams settings 2
scoreboard players set max_teams settings 64
scoreboard players set num_players settings 0
scoreboard players set game_started settings 0

scoreboard players set worldborder_start_distance worldborder 1200
scoreboard players set worldborder_time worldborder 900
scoreboard players set worldborder_end_distance worldborder 25
scoreboard players set worldborder_start_time worldborder 0

#> constants init
scoreboard players set warn1 constants 36000
scoreboard players set warn2 constants 54000
scoreboard players set warn3 constants 66000
scoreboard players set border1 constants 72000
scoreboard players set borderstop constants 90000
scoreboard players set border2 constants 96000
scoreboard players set dmwarn constants 108000
scoreboard players set deathmatch constants 114000
function uhc:constants

function uhc:createteams 
gamerule spawnRadius 0

execute in minecraft:overworld run setworldspawn 0 10 0
execute as @a in minecraft:overworld run spawnpoint @s 0 10 0
worldborder center 0.5 0.5
bossbar add bossbar {"text":"World Border Begins Shrinking","color":"red"}
bossbar set minecraft:bossbar color red
execute store result score max bossbar run scoreboard players get border1 constants
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar visible false
bossbar set minecraft:bossbar name {"text":"World Border Begins Shrinking","color":"red"}