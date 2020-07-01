gamemode spectator @a[scores={deaths=1..}]
execute as @a[scores={deaths=0}] run spawnpoint
scoreboard players add time timer 1
execute if score time timer = warn1 constants run tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border will begin shrinking in thirty minutes!","bold":true,"italic":true,"color":"yellow"}]
execute if score time timer = warn2 constants run tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border will begin shrinking in fifteen minutes!","bold":true,"italic":true,"color":"red"}]
execute if score time timer = warn3 constants run tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border will begin shrinking in five minutes!","bold":true,"italic":true,"color":"dark_red"}]
execute if score time timer = border1 constants run function uhc:border1
execute if score time timer = borderstop constants run function uhc:borderstop
execute if score time timer = border2 constants run function uhc:border2
execute if score time timer = dmwarn constants run function uhc:dmwarn
execute if score time timer = deathmatch constants run function uhc:deathmatch
execute if score display_worldborder_distance settings = 1 constants run function uhc:worldborder
function uhc:bossbar
