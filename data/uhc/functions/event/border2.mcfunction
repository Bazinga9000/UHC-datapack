tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border has resumed once more! It will shrink for ten minutes.","italic":true,"color":"red"}]
execute in minecraft:game run worldborder set 5 600
execute in minecraft:game_nether run worldborder set 5 600
scoreboard players set wbclr uhc.hud 1

scoreboard players operation max uhc.bossbar = dmwarn uhc.internal
scoreboard players operation range uhc.bossbar = border2t uhc.internal
bossbar set minecraft:bossbar color blue
data modify storage uhc bossbar_name[0] set from storage bossbar_events.border2

