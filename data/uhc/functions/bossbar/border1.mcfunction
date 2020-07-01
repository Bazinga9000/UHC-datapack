tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border has begun to shrink! It will stop in fifteen minutes.","bold":true,"italic":true,"underlined":true,"color":"red"}]
execute in minecraft:game run worldborder set 25 900
execute in minecraft:game_nether run worldborder set 25 900
scoreboard players operation max bossbar = borderstop constants
scoreboard players operation range bossbar = border1 uhc.cfg
bossbar set minecraft:bossbar name {"text":"Border Stops Shrinking","color":"blue"}
bossbar set minecraft:bossbar color blue


scoreboard players set worldborder_start_distance worldborder 1200
scoreboard players set worldborder_time worldborder 18000
scoreboard players set worldborder_end_distance worldborder 25
scoreboard players operation worldborder_start_time worldborder = time timer
scoreboard players set wbclr uhc.hud 1
