execute unless score borderstop uhc.cfg matches 0 run function uhc:event/tellraw/borderstop
scoreboard players set wbclr uhc.hud 0

scoreboard players operation max uhc.bossbar = border2 uhc.internal
scoreboard players operation range uhc.bossbar = borderstopt uhc.internal
data modify storage uhc bossbar_name set from storage uhc bossbar_events.borderstop
bossbar set minecraft:bossbar color red
scoreboard players set stage uhc.bossbar 2

time set day
execute in minecraft:game run gamerule doDaylightCycle false
execute in minecraft:game_nether run gamerule doDaylightCycle false
execute in minecraft:game run tp @e[type=!player,type=!horse,type=!wolf,type=!cat,type=!donkey,type=!llama,type=!wither,type=!armor_stand,distance=..100] 0 -100 0
