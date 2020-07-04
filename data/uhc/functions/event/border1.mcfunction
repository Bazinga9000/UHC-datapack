tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border has begun to shrink! It will stop in fifteen minutes.","bold":true,"italic":true,"underlined":true,"color":"red"}]
execute in minecraft:game run worldborder set 25 900
execute in minecraft:game_nether run worldborder set 25 900
scoreboard players set wbclr uhc.hud 1

scoreboard players operation max uhc.bossbar = borderstop uhc.internal
scoreboard players operation range uhc.bossbar = border1t uhc.internal
bossbar set minecraft:bossbar color blue
data modify storage uhc bossbar_name[0] set from storage bossbar_events.border1
