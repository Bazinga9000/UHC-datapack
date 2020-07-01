scoreboard players operation progress bossbar = max bossbar
scoreboard players operation progress bossbar -= time timer
scoreboard players operation range bossbar *= 1200 constants
execute store result bossbar minecraft:bossbar max run scoreboard players get range bossbar
execute store result bossbar minecraft:bossbar value run scoreboard players get progress bossbar

