execute unless score tilldm uhc.cfg matches 0 run function uhc:event/tellraw/dmwarn
scoreboard players set wbclr uhc.hud 0

scoreboard players operation max uhc.bossbar = deathmatch uhc.internal
scoreboard players operation range uhc.bossbar = tilldmt uhc.internal
data modify storage uhc bossbar_name set from storage uhc bossbar_events.tilldm
bossbar set minecraft:bossbar color white
scoreboard players set stage uhc.bossbar 4