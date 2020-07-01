tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border has resumed once more! It will shrink for ten minutes.","italic":true,"color":"red"}]
execute in minecraft:game run worldborder set 5 600
execute in minecraft:game_nether run worldborder set 5 600
scoreboard players operation max uhc.bossbar = dmwarn constants
scoreboard players operation range uhc.bossbar = border2 uhc.cfg
bossbar set minecraft:bossbar name {"text":"Border Stops Shrinking... Again","color":"blue"}
bossbar set minecraft:bossbar color blue

scoreboard players set wbclr uhc.hud 1
