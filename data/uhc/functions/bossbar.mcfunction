scoreboard players operation progress uhc.bossbar = max uhc.bossbar
scoreboard players operation progress uhc.bossbar -= time uhc.bossbar
execute store result bossbar minecraft:bossbar max run scoreboard players get range uhc.bossbar
execute store result bossbar minecraft:bossbar value run scoreboard players get progress uhc.bossbar
bossbar set minecraft:bossbar name [{"nbt":"bossbar_name[0]","storage":"uhc","interpret":"true"},{"nbt":"bossbar_name[1]","storage":"uhc","interpret":"true"}]
