# dead users or users spawning in lobby should be put in spectator (if not debugger)
tag @a[nbt={Dimension: "minecraft:overworld"}, tag=!debugger] add give_spec
gamemode spectator @a[tag=give_spec]
execute as @a[tag=give_spec] run tp @s @r[gamemode=survival]
tag @a remove give_spec
gamemode spectator @a[scores={deaths=1..}, tag=!debugger]

execute as @a[scores={deaths=0}] run spawnpoint
scoreboard players add time timer 1
execute if score time timer = warn1 constants run tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border will begin shrinking in thirty minutes!","bold":true,"italic":true,"color":"yellow"}]
execute if score time timer = warn2 constants run tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border will begin shrinking in fifteen minutes!","bold":true,"italic":true,"color":"red"}]
execute if score time timer = warn3 constants run tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border will begin shrinking in five minutes!","bold":true,"italic":true,"color":"dark_red"}]
execute as @a run function uhc:hud/update

execute if score time timer = border1 constants run function uhc:bossbar/border1
execute if score time timer = borderstop constants run function uhc:bossbar/borderstop
execute if score time timer = border2 constants run function uhc:bossbar/border2
execute if score time timer = dmwarn constants run function uhc:bossbar/dmwarn
execute if score time timer = deathmatch constants run function uhc:bossbar/deathmatch
function uhc:bossbar/update