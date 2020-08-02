# check if teams should be scrambled together
scoreboard players set respect_teams uhc.internal 1
execute if score sardines uhc.esoteric matches 1 run scoreboard players set respect_teams uhc.internal 0

# check if teams should be created
scoreboard players set make_teams uhc.internal 1
execute if score sardines uhc.esoteric matches 1 run scoreboard players set make_teams uhc.internal 0

# check if players in UHC teams should be soft or hard cleared before assigning teams
scoreboard players set soft_clear uhc.internal 0
execute if score boss uhc.esoteric matches 1 run scoreboard players set soft_clear uhc.internal 1