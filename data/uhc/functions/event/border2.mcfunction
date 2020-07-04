function uhc:event/tellraw/border2
execute in minecraft:game run function uhc:event/wb_set/border2
execute in minecraft:game_nether run function uhc:event/wb_set/border2
scoreboard players set wbclr uhc.hud 1

scoreboard players operation max uhc.bossbar = dmwarn uhc.internal
scoreboard players operation range uhc.bossbar = border2t uhc.internal
bossbar set minecraft:bossbar color blue
data modify storage uhc bossbar_name set from storage bossbar_events.border2
scoreboard players set stage uhc.bossbar 3

