function uhc:event/tellraw/border1
execute in minecraft:game run worldborder set 25 900
execute in minecraft:game_nether run worldborder set 25 900
scoreboard players set wbclr uhc.hud 1

scoreboard players operation max uhc.bossbar = borderstop uhc.internal
scoreboard players operation range uhc.bossbar = border1t uhc.internal
bossbar set minecraft:bossbar color blue
data modify storage uhc bossbar_name set from storage bossbar_events.border1
scoreboard players set stage uhc.bossbar 1
