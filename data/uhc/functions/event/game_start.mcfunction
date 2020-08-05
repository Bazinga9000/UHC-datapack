#> gamerule init
execute in minecraft:game run function uhc:gamerules/game
execute in minecraft:game_nether run function uhc:gamerules/game

execute if score always_day uhc.esoteric matches 1 in game run gamerule doDaylightCycle false
execute if score always_night uhc.esoteric matches 1 in game run gamerule doDaylightCycle false

#> scoreboard init
scoreboard objectives setdisplay sidebar
scoreboard players reset * uhc.deaths
scoreboard players set game_started uhc.internal 1
scoreboard players set time uhc.bossbar 0
scoreboard players set wintime uhc.internal 0
scoreboard players set is_win uhc.internal 0
scoreboard players set wbclr uhc.hud 0

# mark everyone online as gamer
scoreboard players reset * uhc.gamers
scoreboard players set @a uhc.gamers 1

# mark unused teams
scoreboard players reset * uhc.team_alive
for i in 1..64 run execute unless entity @a[team=team$i] run scoreboard players set $i uhc.team_alive -1

#> player stuff
function uhc:handle_spreadplayers
cmd mvunload lobby

execute as @a run function uhc:reset_statuses
effect give @a instant_health 1 20
effect give @a minecraft:regeneration 45 255 true
effect give @a minecraft:resistance 60 255 true

# apply esoterics
execute as @a if score gone_fishing uhc.esoteric matches 1 run function uhc:esoteric/kit/gone_fishing
execute if score sardines uhc.esoteric matches 1 run function uhc:esoteric/init/sardines
execute as @a run function uhc:esoteric/kit/max_health
execute as @a run function uhc:esoteric/kit/mv_speed
execute as @a if score bomberman uhc.esoteric matches 1 run function uhc:esoteric/kit/bomberman
execute if score boss uhc.esoteric matches 1 run function uhc:esoteric/init/boss

gamemode spectator @a[team=spectator]
gamemode survival @a[team=!spectator]

tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":true},{"text":"Let the games begin! Our players have been shuffled across the world!","bold":true,"italic":true,"underlined":true,"color":"green"}]

#> world stuff
worldborder warning distance 25
let v = size_init_bor uhc.cfg run execute in minecraft:game run worldborder set $v
let v = size_init_bor uhc.cfg run execute in minecraft:game_nether run worldborder set $v

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
execute in minecraft:game run fill 0 3 0 0 254 0 barrier

#> bossbar stuff
# allow everyone to see bossbar
bossbar set minecraft:bossbar visible false
bossbar set minecraft:bossbar visible true
scoreboard players set stage uhc.bossbar 0
bossbar set minecraft:bossbar color red
data modify storage uhc bossbar_name set from storage uhc bossbar_events.stillborder
scoreboard players operation max uhc.bossbar = border1 uhc.internal
scoreboard players operation range uhc.bossbar = stillbordert uhc.internal
