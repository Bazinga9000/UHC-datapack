#> scoreboard inits
scoreboard objectives add uhc.health health {"text":"♥","color":"red"}
scoreboard objectives setdisplay list uhc.health
scoreboard objectives setdisplay belowName uhc.health

scoreboard objectives add uhc.deaths deathCount
scoreboard objectives add constants dummy

# stores bossbar variables: range, max, progress, time
scoreboard objectives add uhc.bossbar dummy
# used for config for the game, should be controllable within the cfg box and functions should NOT change uhc.cfg in game
scoreboard objectives add uhc.cfg dummy
# used for marking the option a configurator picks in the cfg box
scoreboard objectives add uhc.cfg.opt dummy
# used for internal vars that don't fit other scoreboards
scoreboard objectives add uhc.internal dummy
# records users' saturations in the lobby to force their saturation to 5
scoreboard objectives add uhc.saturation dummy
# records amount of alive players in a team, to figure out if all players are dead
scoreboard objectives add uhc.team_alive dummy


scoreboard players set num_teams uhc.cfg 4
scoreboard players set min_teams uhc.cfg 2
scoreboard players set max_teams uhc.cfg 64
scoreboard players set game_started uhc.internal 0

# deprecated scoreboards
# cfg, spawned, worldborder, bossbar, saturation, health, deaths, timer, settings
#> constants init
scoreboard players set warn1 uhc.internal 36000
scoreboard players set warn2 uhc.internal 54000
scoreboard players set warn3 uhc.internal 66000
scoreboard players set border1 uhc.internal 72000
scoreboard players set borderstop uhc.internal 90000
scoreboard players set border2 uhc.internal 96000
scoreboard players set dmwarn uhc.internal 108000
scoreboard players set deathmatch uhc.internal 114000
function uhc:init_constants
function uhc:teams/create 

execute in minecraft:lobby run setworldspawn 0 10 0
execute as @a in minecraft:lobby run spawnpoint @s 0 10 0
execute in minecraft:game run worldborder center 0.5 0.5
execute in minecraft:game_nether run worldborder center 0.5 0.5
bossbar add bossbar {"text":"World Border Begins Shrinking","color":"red"}
execute store result score max uhc.bossbar run scoreboard players get border1 uhc.internal
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar visible false

#> gamerule inits
execute in minecraft:lobby run function uhc:gamerules/lobby
execute in minecraft:game run function uhc:gamerules/game
execute in minecraft:game_nether run function uhc:gamerules/game

#> storage inits
data modify storage uhc team_names set value ['{"text":"Spectators","color":"aqua"}', '{"text":"Team 1","color":"#c04040"}', '{"text":"Team 2","color":"#4040c0"}', '{"text":"Team 3","color":"#40c040"}', '{"text":"Team 4","color":"#c0c040"}', '{"text":"Team 5","color":"#c06b40"}', '{"text":"Team 6","color":"#6b40c0"}', '{"text":"Team 7","color":"#40c0c0"}', '{"text":"Team 8","color":"#6bc040"}', '{"text":"Team 9","color":"#c09640"}', '{"text":"Team 10","color":"#9640c0"}', '{"text":"Team 11","color":"#4096c0"}', '{"text":"Team 12","color":"#40c096"}', '{"text":"Team 13","color":"#96c040"}', '{"text":"Team 14","color":"#c040c0"}', '{"text":"Team 15","color":"#406bc0"}', '{"text":"Team 16","color":"#40c06b"}', '{"text":"Team 17","color":"#c04096"}', '{"text":"Team 18","color":"#c06bc0"}', '{"text":"Team 19","color":"#6bc06b"}', '{"text":"Team 20","color":"#c0966b"}', '{"text":"Team 21","color":"#c0406b"}', '{"text":"Team 22","color":"#c06b96"}', '{"text":"Team 23","color":"#6b96c0"}', '{"text":"Team 24","color":"#96c06b"}', '{"text":"Team 25","color":"#c06b6b"}', '{"text":"Team 26","color":"#964040"}', '{"text":"Team 27","color":"#6b6bc0"}', '{"text":"Team 28","color":"#6bc0c0"}', '{"text":"Team 29","color":"#c0c06b"}', '{"text":"Team 30","color":"#966b40"}', '{"text":"Team 31","color":"#966bc0"}', '{"text":"Team 32","color":"#6bc096"}', '{"text":"Team 33","color":"#969640"}', '{"text":"Team 34","color":"#406b40"}', '{"text":"Team 35","color":"#404096"}', '{"text":"Team 36","color":"#40966b"}', '{"text":"Team 37","color":"#6b9640"}', '{"text":"Team 38","color":"#406b6b"}', '{"text":"Team 39","color":"#96406b"}', '{"text":"Team 40","color":"#406b96"}', '{"text":"Team 41","color":"#409640"}', '{"text":"Team 42","color":"#40406b"}', '{"text":"Team 43","color":"#6b4040"}', '{"text":"Team 44","color":"#964096"}', '{"text":"Team 45","color":"#409696"}', '{"text":"Team 46","color":"#6b406b"}', '{"text":"Team 47","color":"#6b6b40"}', '{"text":"Team 48","color":"#6b4096"}', '{"text":"Team 49","color":"#c09696"}', '{"text":"Team 50","color":"#404040"}', '{"text":"Team 51","color":"#966b6b"}', '{"text":"Team 52","color":"#96c0c0"}', '{"text":"Team 53","color":"#c0c096"}', '{"text":"Team 54","color":"#6b6b6b"}', '{"text":"Team 55","color":"#6b9696"}', '{"text":"Team 56","color":"#c096c0"}', '{"text":"Team 57","color":"#96c096"}', '{"text":"Team 58","color":"#969696"}', '{"text":"Team 59","color":"#6b6b96"}', '{"text":"Team 60","color":"#6b966b"}', '{"text":"Team 61","color":"#9696c0"}', '{"text":"Team 62","color":"#c0c0c0"}', '{"text":"Team 63","color":"#966b96"}', '{"text":"Team 64","color":"#96966b"}']
data modify storage uhc bossbar_events set value {stillborder:'{"text":"World Border Begins Shrinking","color":"red"}', border1: '{"text":"Border Stops Shrinking","color":"blue"}', borderstop:'{"text":"World Border Begins Shrinking... Again.","color":"red"}', border2:'{"text":"Border Stops Shrinking... Again","color":"blue"}',tilldm:'{"text":"The Battle at the Top of the World","color":"white"}', dm: '{"text":"Heat Death of the Universe","color":"dark_purple"}'}
data modify storage uhc cfg.esoteric.cfg set value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
data modify storage uhc cfg.esoteric.inactive set value {Enchantments:[],display:{Lore:['[{"text":"Mode: ","color":"white"},{"text":"INACTIVE","color":"red"}]']}}
data modify storage uhc cfg.esoteric.active set value {Enchantments:[{}],display:{Lore:['[{"text":"Mode: ","color":"white"},{"text":"ACTIVE","color":"green"}]']}}