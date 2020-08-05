execute store result score num_players uhc.internal if entity @a[tag=!spectator]
execute store result score num_spectators uhc.internal if entity @a[tag=spectator]
spawnpoint @a 0 10 0
# force non-debuggers out of lobby
execute as @a[nbt=!{Dimension: "minecraft:lobby"}, tag=!debugger] in minecraft:lobby run tp @s 0 10 0

function uhc:parkour/tick
function uhc:tp/tick
clear @a tnt

#> config room
#execute positioned [position of cfg] run function uhc:cfg/[cfg]
execute positioned 48 18 -1 run function uhc:cfg/wbsize
execute positioned 48 18 -3 run function uhc:cfg/tcount
execute positioned 48 18 -5 run function uhc:cfg/esoteric
execute positioned 48 18 -7 run function uhc:cfg/intervals
function uhc:cfg/cfg_board

#>  The "Make InfiniCake Useless"ifier
execute as @a store result score @s uhc.saturation run data get entity @s foodSaturationLevel
execute as @a[scores={uhc.saturation=6..}, gamemode=!creative, gamemode=!spectator] run effect give @s hunger 1 127 true
execute as @a[scores={uhc.saturation=..4}, gamemode=!creative, gamemode=!spectator] run effect give @s minecraft:saturation 1 0 true
execute as @a[scores={uhc.saturation=5}, gamemode=!creative, gamemode=!spectator] run effect clear @s minecraft:saturation
execute as @a[scores={uhc.saturation=5}, gamemode=!creative, gamemode=!spectator] run effect clear @s minecraft:hunger
