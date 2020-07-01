scoreboard players operation progress uhc.bossbar = max uhc.bossbar
scoreboard players operation progress uhc.bossbar -= time timer
scoreboard players operation range uhc.bossbar *= 1200 constants
execute store result bossbar minecraft:bossbar max run scoreboard players get range uhc.bossbar
execute store result bossbar minecraft:bossbar value run scoreboard players get progress uhc.bossbar

