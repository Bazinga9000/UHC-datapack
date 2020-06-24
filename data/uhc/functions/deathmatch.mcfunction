tellraw @a ["",{"text":"<"},{"text":"|||||","bold":true,"italic":true,"obfuscated":true,"color":"gold"},{"text":"The Box","bold":true,"italic":true,"color":"gold"},{"text":"|||||","bold":true,"italic":true,"obfuscated":true,"color":"gold"},{"text":"> "},{"text":"Ten minutes have passed. It is time. Let the Battle At The Top Of The World commence!","bold":true,"italic":true,"underlined":true,"color":"blue"}]
worldborder set 20
fill -10 254 10 10 254 -10 barrier
tp @a 0 255 0
spreadplayers 0 0 5 9 true @a
execute as @a at @s run tp @s ~ ~ ~ facing 0 255 0
effect give @a minecraft:resistance 10 10
effect give @a minecraft:slowness 10 10
effect give @a minecraft:jump_boost 10 128
effect give @a minecraft:blindness 10 10
scoreboard players set max bossbar 999999999
execute store result score min bossbar run scoreboard players get dmwarn constants
bossbar set minecraft:bossbar name {"text":"Heat Death of the Universe","color":"dark_purple"}
bossbar set minecraft:bossbar color purple
time set midnight
