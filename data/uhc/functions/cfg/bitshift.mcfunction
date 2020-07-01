scoreboard players operation lshiftend uhc.internal *= 2 constants
scoreboard players remove lshifter uhc.internal 1
execute unless score lshifter matches ..0 run function uhc:cfg/bitshift