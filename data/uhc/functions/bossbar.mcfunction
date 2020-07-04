scoreboard players operation progress uhc.bossbar = max uhc.bossbar
scoreboard players operation progress uhc.bossbar -= time uhc.bossbar
execute store result bossbar minecraft:bossbar max run scoreboard players get range uhc.bossbar
execute store result bossbar minecraft:bossbar value run scoreboard players get progress uhc.bossbar

