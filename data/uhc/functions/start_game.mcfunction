scoreboard objectives add deaths deathCount
scoreboard players add @a deaths 0
gamerule naturalRegeneration false
spreadplayers 0 0 150 550 true @a
effect give @a instant_health 1 20
clear @a
worldborder warning distance 25
worldborder set 1200
scoreboard objectives add health health
scoreboard objectives setdisplay list health
gamerule doDaylightCycle true
execute in the_nether run gamerule naturalRegeneration false
execute in the_end run gamerule naturalRegeneration false
gamerule naturalRegeneration false
difficulty peaceful
difficulty hard
time set day
weather clear 9999
xp set @a 0 points
effect give @a minecraft:regeneration 45 255 true
effect give @a minecraft:resistance 60 255 false
gamemode spectator @a[team=spectator]
gamemode survival @a[gamemode=!spectator]
scoreboard objectives add timer dummy
tellraw @a ["",{"text":"<"},{"text":"|||||","bold":true,"italic":true,"obfuscated":true,"color":"gold"},{"text":"The Box","bold":true,"italic":true,"color":"gold"},{"text":"|||||","bold":true,"italic":true,"obfuscated":true,"color":"gold"},{"text":"> "},{"text":"Let the games begin! Our players have been shuffled across the world!","bold":true,"italic":true,"underlined":true,"color":"green"}]
advancement revoke @a everything
gamerule announceAdvancements true
bossbar set minecraft:bossbar visible false
bossbar set minecraft:bossbar visible true
scoreboard players set max bossbar 72000
scoreboard players set game_started settings 1
fill -10 244 -10 10 255 10 air
