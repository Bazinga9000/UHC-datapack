spawnpoint @a 0 10 0
# force non-debuggers out of lobby
execute as @a[nbt=!{Dimension: "minecraft:lobby"}, tag=!debugger] in minecraft:lobby run tp @s 0 10 0

function uhc:parkour/tick
function uhc:guide/tick

#>  The "Make InfiniCake Useless"ifier
execute as @a store result score @s uhc.saturation run data get entity @s foodSaturationLevel
execute as @a[scores={uhc.saturation=6..}, gamemode=!creative, gamemode=!spectator] run effect give @s hunger 1 255 true
execute as @a[scores={uhc.saturation=..4}, gamemode=!creative, gamemode=!spectator] run effect give @s minecraft:saturation 1 0 true
execute as @a[scores={uhc.saturation=5}, gamemode=!creative, gamemode=!spectator] run effect clear @s minecraft:saturation
execute as @a[scores={uhc.saturation=5}, gamemode=!creative, gamemode=!spectator] run effect clear @s minecraft:hunger

#> random lobby tidbits
clear @a tnt
# make cameras look at you
execute as @e[tag=camera] at @s run tp @s ~ ~ ~ facing entity @p[tag=!camera]
