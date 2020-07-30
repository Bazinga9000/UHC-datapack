function uhc:event/tellraw/border2
let t = border2s uhc.internal run execute in minecraft:game run worldborder set 5 $t
let t = border2s uhc.internal run execute in minecraft:game_nether run worldborder set 5 $t
scoreboard players set wbclr uhc.hud 1

scoreboard players operation max uhc.bossbar = dmwarn uhc.internal
scoreboard players operation range uhc.bossbar = border2t uhc.internal
bossbar set minecraft:bossbar color blue
data modify storage uhc bossbar_name set from storage uhc bossbar_events.border2
scoreboard players set stage uhc.bossbar 3

