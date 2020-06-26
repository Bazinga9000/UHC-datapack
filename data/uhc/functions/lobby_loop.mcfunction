execute store result score num_players settings if entity @a[scores={is_spectator=0}]
# force non-debuggers out of overworld
execute as @a[nbt={Dimension: "minecraft:overworld"}, tag=!debugger] in uhc:lobby run tp @s 0 10 0
#> config room
execute positioned 48 18 -3 run function uhc:cfg/tcount
execute positioned 48 18 -7 run function uhc:cfg/intervals

#>  The "Make InfiniCake Useless"ifier
execute as @a store result score @s saturation run data get entity @s foodSaturationLevel
execute as @a[scores={saturation=6..}, gamemode=!creative, gamemode=!spectator] run effect give @s hunger 1 127 true
execute as @a[scores={saturation=..4}, gamemode=!creative, gamemode=!spectator] run effect give @s minecraft:saturation 1 0 true
execute as @a[scores={saturation=5}, gamemode=!creative, gamemode=!spectator] run effect clear @s minecraft:saturation
execute as @a[scores={saturation=5}, gamemode=!creative, gamemode=!spectator] run effect clear @s minecraft:hunger