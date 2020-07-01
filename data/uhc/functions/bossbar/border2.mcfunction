tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border has resumed once more! It will shrink for ten minutes.","italic":true,"color":"red"}]
execute in minecraft:game worldborder set 5 600
execute in minecraft:game_nether run worldborder set 5 600
scoreboard players operation max bossbar = dmwarn constants
scoreboard players operation range bossbar = border2 uhc.cfg
bossbar set minecraft:bossbar name {"text":"Border Stops Shrinking... Again","color":"blue"}
bossbar set minecraft:bossbar color blue

scoreboard players set worldborder_start_distance worldborder 25
scoreboard players set worldborder_time worldborder 12000
scoreboard players set worldborder_end_distance worldborder 3
scoreboard players operation worldborder_start_time worldborder = time timer
scoreboard players set wbclr uhc.hud 1
