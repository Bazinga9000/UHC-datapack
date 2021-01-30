spawnpoint @a 0 10 0
# force non-debuggers out of lobby
execute as @a[nbt=!{Dimension: "minecraft:lobby"}, tag=!debugger] in minecraft:lobby run tp @s 0 10 0

function uhc:parkour/tick
function uhc:guide/tick

#> random lobby tidbits
clear @a tnt
# make cameras look at you
execute as @e[tag=camera] at @s run tp @s ~ ~ ~ facing entity @p[tag=!camera]
