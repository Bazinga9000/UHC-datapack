tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The worldborder is now stopped. It will resume in five minutes.","italic":true,"color":"aqua"}]
execute store result score max bossbar run scoreboard players get border2 constants
execute store result score min bossbar run scoreboard players get borderstop constants
bossbar set minecraft:bossbar name {"text":"World Border Begins Shrinking... Again.","color":"red"}
bossbar set minecraft:bossbar color red
time set day
execute in minecraft:game run gamerule doDaylightCycle false
execute in minecraft:game_nether run gamerule doDaylightCycle false
scoreboard players set display_worldborder_distance settings 0
tp @e[type=!player,type=!horse,type=!wolf,type=!cat,type=!donkey,type=!llama,type=!wither] 0 -100 0
