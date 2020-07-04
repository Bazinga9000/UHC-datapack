scoreboard players operation progress uhc.bossbar = max uhc.bossbar
scoreboard players operation progress uhc.bossbar -= time uhc.bossbar
execute store result bossbar minecraft:bossbar max run scoreboard players get range uhc.bossbar
execute store result bossbar minecraft:bossbar value run scoreboard players get progress uhc.bossbar
data modify storage bossbar_timer uhc set value []
execute if score dm uhc.bossbar matches 0 run function uhc:bossbar_timer
bossbar set minecraft:bossbar name [{"nbt":"bossbar_name","storage":"uhc","interpret":"true"},{"nbt":"bossbar_timer[0]","storage":"uhc","interpret":"true","color":"white"},{"nbt":"bossbar_timer[1]","storage":"uhc","interpret":"true"},{"nbt":"bossbar_timer[2]","storage":"uhc","interpret":"true"},{"nbt":"bossbar_timer[3]","storage":"uhc","interpret":"true"}]
