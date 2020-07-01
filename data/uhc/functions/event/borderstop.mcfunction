tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The worldborder is now stopped. It will resume in five minutes.","italic":true,"color":"aqua"}]
scoreboard players operation max uhc.bossbar = border2 uhc.internal
scoreboard players operation range uhc.bossbar = borderstop uhc.cfg
bossbar set minecraft:bossbar name {"text":"World Border Begins Shrinking... Again.","color":"red"}
bossbar set minecraft:bossbar color red
time set day
execute in minecraft:game run gamerule doDaylightCycle false
execute in minecraft:game_nether run gamerule doDaylightCycle false
scoreboard players set wbclr uhc.hud 0
tp @e[type=!player,type=!horse,type=!wolf,type=!cat,type=!donkey,type=!llama,type=!wither] 0 -100 0
