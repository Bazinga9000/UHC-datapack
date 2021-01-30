
#> scoreboard inits
scoreboard objectives add constants dummy
# used for internal vars that don't fit other objectives
scoreboard objectives add uhc.internal dummy
# lobby teleport system
scoreboard objectives add uhc.guide trigger

# parkour objectives
scoreboard objectives add pcheckpoint dummy
scoreboard objectives add acheckpoint dummy
scoreboard objectives add level trigger
scoreboard objectives add last trigger
scoreboard objectives add reset trigger
scoreboard objectives add cstick minecraft.used:minecraft.carrot_on_a_stick

#> fn inits
function uhc:init_consts

#> gamerule inits
execute in minecraft:lobby run function uhc:gamerules

#> misc setup
execute in minecraft:lobby run setworldspawn 0 10 0
execute as @a in minecraft:lobby run spawnpoint @s 0 10 0
