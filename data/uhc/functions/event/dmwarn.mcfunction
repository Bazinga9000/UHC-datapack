tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The worldborder has stopped. If the game does not end within ten minutes, I shall end it myself.","italic":true,"color":"dark_aqua"}]
scoreboard players set wbclr uhc.hud 0

scoreboard players operation max uhc.bossbar = deathmatch uhc.internal
scoreboard players operation range uhc.bossbar = tilldmt uhc.internal
data modify storage uhc bossbar_name set from storage bossbar_events.tilldm
bossbar set minecraft:bossbar color white
