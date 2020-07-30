tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":true},{"text":"It is time. Let the Battle At The Top Of The World commence!","bold":true,"italic":true,"underlined":true,"color":"blue"}]
worldborder set 20
fill -10 254 10 10 254 -10 barrier
tp @a 0 255 0
execute in minecraft:game run spreadplayers 0 0 5 9 true @a
execute as @a at @s run tp @s ~ ~ ~ facing 0 255 0
effect give @a minecraft:resistance 10 10
effect give @a minecraft:slowness 10 10
effect give @a minecraft:jump_boost 10 128
effect give @a minecraft:blindness 10 10
scoreboard players set wbclr uhc.hud -1
time set midnight

scoreboard players set max uhc.bossbar 2147483647
scoreboard players set range uhc.bossbar 0
data modify storage uhc bossbar_name set from storage uhc bossbar_events.dm
bossbar set minecraft:bossbar color purple
scoreboard players set stage uhc.bossbar 5
