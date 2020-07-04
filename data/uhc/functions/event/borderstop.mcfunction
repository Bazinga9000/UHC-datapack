tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The worldborder is now stopped. It will resume in five minutes.","italic":true,"color":"aqua"}]
scoreboard players set wbclr uhc.hud 0

scoreboard players operation max uhc.bossbar = border2 uhc.internal
scoreboard players operation range uhc.bossbar = borderstopt uhc.internal
data modify storage uhc bossbar_name set from storage bossbar_events.borderstop
bossbar set minecraft:bossbar color red

time set day
execute in minecraft:game run gamerule doDaylightCycle false
execute in minecraft:game_nether run gamerule doDaylightCycle false
execute in minecraft:game run tp @e[type=!player,type=!horse,type=!wolf,type=!cat,type=!donkey,type=!llama,type=!wither,type=!armor_stand,distance=..100] 0 -100 0
