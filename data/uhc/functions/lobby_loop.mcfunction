execute store result score num_players settings if entity @a[tag=!spectator]
execute store result score num_spectators settings if entity @a[tag=spectator]
# force non-debuggers out of overworld
execute as @a[nbt={Dimension: "minecraft:game"}, tag=!debugger] in minecraft:overworld run tp @s 0 10 0

function uhc:parkour/tick.mcfunction

#> config room
execute positioned 48 18 -3 run function uhc:cfg/tcount
execute positioned 48 18 -7 run function uhc:cfg/intervals

#>  The "Make InfiniCake Useless"ifier
execute as @a store result score @s saturation run data get entity @s foodSaturationLevel
execute as @a[scores={saturation=6..}, gamemode=!creative, gamemode=!spectator] run effect give @s hunger 1 127 true
execute as @a[scores={saturation=..4}, gamemode=!creative, gamemode=!spectator] run effect give @s minecraft:saturation 1 0 true
execute as @a[scores={saturation=5}, gamemode=!creative, gamemode=!spectator] run effect clear @s minecraft:saturation
execute as @a[scores={saturation=5}, gamemode=!creative, gamemode=!spectator] run effect clear @s minecraft:hunger