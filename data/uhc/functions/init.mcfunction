#> scoreboard inits
scoreboard objectives add uhc.health health {"text":"♥","color":"red"}
scoreboard objectives setdisplay list uhc.health
scoreboard objectives setdisplay belowName uhc.health
scoreboard objectives add constants dummy
scoreboard objectives add uhc.bossbar dummy
scoreboard objectives add settings dummy
scoreboard objectives add uhc.cfg dummy Config
scoreboard objectives add uhc.cfg.opt dummy
scoreboard objectives add uhc.deaths deathCount
scoreboard objectives add uhc.saturation dummy

scoreboard players set num_teams settings 4
scoreboard players set min_teams settings 2
scoreboard players set max_teams settings 64
scoreboard players set game_started settings 0

# deprecated scoreboards
# cfg, spawned, worldborder, bossbar, saturation, health, deaths, timer, settings(eventually), constants(eventually)
#> constants init
scoreboard players set warn1 constants 36000
scoreboard players set warn2 constants 54000
scoreboard players set warn3 constants 66000
scoreboard players set border1 constants 72000
scoreboard players set borderstop constants 90000
scoreboard players set border2 constants 96000
scoreboard players set dmwarn constants 108000
scoreboard players set deathmatch constants 114000
function uhc:init_constants
function uhc:teams/create 

execute in minecraft:overworld run setworldspawn 0 10 0
execute as @a in minecraft:overworld run spawnpoint @s 0 10 0
execute in minecraft:game run worldborder center 0.5 0.5
execute in minecraft:game_nether run worldborder center 0.5 0.5
bossbar add bossbar {"text":"World Border Begins Shrinking","color":"red"}
bossbar set minecraft:bossbar color red
execute store result score max uhc.bossbar run scoreboard players get border1 constants
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar visible false
bossbar set minecraft:bossbar name {"text":"World Border Begins Shrinking","color":"red"}

#> gamerule inits
execute in minecraft:overworld run function uhc:gamerules/lobby
execute in minecraft:game run function uhc:gamerules/game
execute in minecraft:game_nether run function uhc:gamerules/game