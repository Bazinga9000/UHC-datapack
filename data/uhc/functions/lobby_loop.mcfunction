execute store result score num_players uhc.internal if entity @a[tag=!spectator]
execute store result score num_spectators uhc.internal if entity @a[tag=spectator]
# force non-debuggers out of overworld
execute as @a[nbt={Dimension: "minecraft:game"}, tag=!debugger] in minecraft:overworld run tp @s 0 10 0
execute as @a[nbt={Dimension: "minecraft:game_nether"}, tag=!debugger] in minecraft:overworld run tp @s 0 10 0

function uhc:parkour/tick

#> config room
execute positioned 48 18 -3 run function uhc:cfg/tcount
execute positioned 48 18 -5 run function uhc:cfg/esoteric
execute positioned 48 18 -7 run function uhc:cfg/intervals

#>  The "Make InfiniCake Useless"ifier
execute as @a store result score @s uhc.saturation run data get entity @s foodSaturationLevel 10
execute as @a[scores={uhc.saturation=51..}, gamemode=!creative, gamemode=!spectator] run effect give @s hunger 1 100 true
execute as @a[scores={uhc.saturation=..49}, gamemode=!creative, gamemode=!spectator] run effect give @s minecraft:saturation 1 0 true
execute as @a[scores={uhc.saturation=50}, gamemode=!creative, gamemode=!spectator] run effect clear @s minecraft:saturation
execute as @a[scores={uhc.saturation=50}, gamemode=!creative, gamemode=!spectator] run effect clear @s minecraft:hunger