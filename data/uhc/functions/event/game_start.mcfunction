#> gamerule init
execute in minecraft:game run function uhc:gamerules/game
execute in minecraft:game_nether run function uhc:gamerules/game

#> scoreboard init
scoreboard players set @a uhc.deaths 0
scoreboard players set game_started uhc.internal 1
scoreboard players set time uhc.bossbar 0
scoreboard players set wbclr uhc.hud 0

#> player stuff
execute in minecraft:game run tp @a 0 255 0
#REQUIRES PLUGIN
cmd mvunload lobby
execute in minecraft:game run spreadplayers 0 0 150 550 true @a
effect clear @a
effect give @a instant_health 1 20
effect give @a minecraft:regeneration 45 255 true
effect give @a minecraft:resistance 60 255 false
clear @a
xp set @a 0 points
advancement revoke @a everything

gamemode spectator @a[team=spectator]
gamemode survival @a[team=!spectator]

data modify storage uhc box_name set value '[{"text":"<"},{"text":"|||||","bold":true,"italic":true,"obfuscated":true,"color":"gold"},{"text":"The Box","bold":true,"italic":true,"color":"gold"},{"text":"|||||","bold":true,"italic":true,"obfuscated":true,"color":"gold"},{"text":"> "}]'
tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":true},{"text":"Let the games begin! Our players have been shuffled across the world!","bold":true,"italic":true,"underlined":true,"color":"green"}]

#> world stuff
worldborder warning distance 25
execute in minecraft:game run worldborder set 1200
execute in minecraft:game_nether run worldborder set 1200
time set day
weather clear 9999
# purge aggro mobs
difficulty peaceful
difficulty hard

#> bossbar stuff
# allow everyone to see bossbar
bossbar set minecraft:bossbar visible false
bossbar set minecraft:bossbar visible true
scoreboard players set stage uhc.bossbar 0
bossbar set minecraft:bossbar color red
data modify storage uhc bossbar_name set from storage uhc bossbar_events.stillborder
scoreboard players operation max uhc.bossbar = border1 uhc.internal
scoreboard players operation range uhc.bossbar = stillbordert uhc.internal