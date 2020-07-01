# dead users or users spawning in lobby should be put in spectator (if not debugger)
tag @a[nbt={Dimension: "minecraft:overworld"}, tag=!debugger] add give_spec
gamemode spectator @a[tag=give_spec]
execute as @a[tag=give_spec] run tp @s @r[gamemode=survival]
tag @a remove give_spec
gamemode spectator @a[scores={uhc.deaths=1..}, tag=!debugger]

execute as @a[scores={uhc.deaths=0}] run spawnpoint
scoreboard players add time uhc.bossbar 1
execute if score time uhc.bossbar = warn1 constants run tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border will begin shrinking in thirty minutes!","bold":true,"italic":true,"color":"yellow"}]
execute if score time uhc.bossbar = warn2 constants run tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border will begin shrinking in fifteen minutes!","bold":true,"italic":true,"color":"red"}]
execute if score time uhc.bossbar = warn3 constants run tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border will begin shrinking in five minutes!","bold":true,"italic":true,"color":"dark_red"}]
execute as @a run function uhc:hud/update

execute if score time uhc.bossbar = border1 constants run function uhc:bossbar/border1
execute if score time uhc.bossbar = borderstop constants run function uhc:bossbar/borderstop
execute if score time uhc.bossbar = border2 constants run function uhc:bossbar/border2
execute if score time uhc.bossbar = dmwarn constants run function uhc:bossbar/dmwarn
execute if score time uhc.bossbar = deathmatch constants run function uhc:bossbar/deathmatch
function uhc:bossbar/update