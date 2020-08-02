#> gamerule init
execute in minecraft:game run function uhc:gamerules/game
execute in minecraft:game_nether run function uhc:gamerules/game

#> scoreboard init
scoreboard objectives setdisplay sidebar
scoreboard players set @a uhc.deaths 0
scoreboard players set game_started uhc.internal 1
scoreboard players set time uhc.bossbar 0
scoreboard players set wbclr uhc.hud 0

#> player stuff
execute unless score nether_spawn uhc.esoteric matches 1 in game run tp @a 0 255 0
execute unless score nether_spawn uhc.esoteric matches 1 run let x = spread_range uhc.internal run let y = spread_max uhc.internal run execute in game run spreadplayers 0 0 $x $y under 125 true @a
execute if score nether_spawn uhc.esoteric matches 1 in game_nether run tp @a 0 255 0
execute if score nether_spawn uhc.esoteric matches 1 run let x = spread_range uhc.internal run let y = spread_max uhc.internal run execute in game_nether run spreadplayers 0 0 $x $y under 125 true @a
cmd mvunload lobby

execute as @a run function uhc:reset_statuses
effect give @a instant_health 1 20
effect give @a minecraft:regeneration 45 255 true
effect give @a minecraft:resistance 60 255 false
tag @a add gamer

# apply esoterics
execute as @a if score gone_fishing uhc.esoteric matches 1 run function uhc:esoteric/kit/gone_fishing
execute as @a run function uhc:esoteric/kit/max_health
execute as @a run function uhc:esoteric/kit/mv_speed
execute as @a if score bomberman uhc.esoteric matches 1 run function uhc:esoteric/kit/bomberman

gamemode spectator @a[team=spectator]
gamemode survival @a[team=!spectator]

tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":true},{"text":"Let the games begin! Our players have been shuffled across the world!","bold":true,"italic":true,"underlined":true,"color":"green"}]

#> world stuff
worldborder warning distance 25
let v = size_init_bor uhc.cfg run execute in minecraft:game run worldborder set $v
let v = size_init_bor uhc.cfg run execute in minecraft:game_nether run worldborder set $v

execute if score always_day uhc.esoteric matches 1 in game run gamerule doDaylightCycle false
execute if score always_night uhc.esoteric matches 1 in game run gamerule doDaylightCycle false
execute in game run time set day
execute if score always_night uhc.esoteric matches 1 in game run time set midnight
weather clear 9999
# purge aggro mobs
difficulty peaceful
difficulty hard
# make beacon
execute in minecraft:game run fill -1 0 -1 1 0 1 netherite_block
execute in minecraft:game run setblock 0 1 0 beacon
execute in minecraft:game run setblock 0 2 0 bedrock
execute in minecraft:game run fill 0 3 0 0 255 0 barrier

#> bossbar stuff
# allow everyone to see bossbar
bossbar set minecraft:bossbar visible false
bossbar set minecraft:bossbar visible true
scoreboard players set stage uhc.bossbar 0
bossbar set minecraft:bossbar color red
data modify storage uhc bossbar_name set from storage uhc bossbar_events.stillborder
scoreboard players operation max uhc.bossbar = border1 uhc.internal
scoreboard players operation range uhc.bossbar = stillbordert uhc.internal