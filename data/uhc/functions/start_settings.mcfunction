# check if teams should be scrambled together
scoreboard players set respect_teams uhc.stsetting 1
execute if score sardines uhc.esoteric matches 1 run scoreboard players set respect_teams uhc.stsetting 0

# check if teams should be created
scoreboard players set make_teams uhc.stsetting 1
execute if score sardines uhc.esoteric matches 1 run scoreboard players set make_teams uhc.stsetting 0

# check if players in UHC teams should be soft or hard cleared before assigning teams
scoreboard players set soft_clear uhc.stsetting 0
execute if score boss uhc.esoteric matches 1 run scoreboard players set soft_clear uhc.stsetting 1

# check if teams should be announced on assigning
scoreboard players set announce_teams uhc.stsetting 1
execute if score mafia uhc.esoteric matches 1 run scoreboard players set announce_teams uhc.stsetting 0

# prefixes on teams
scoreboard players set show_prefixes uhc.stsetting 1 
execute if score mafia uhc.esoteric matches 1 run scoreboard players set show_prefixes uhc.stsetting 0

# friendly fire on teams
scoreboard players set friendly_fire uhc.stsetting 0
execute if score mafia uhc.esoteric matches 1 run scoreboard players set friendly_fire uhc.stsetting 1

# value marking that every team >= the value should have players added to it
scoreboard players set rand_min uhc.stsetting 1
execute if score boss uhc.esoteric matches 1 run scoreboard players set rand_min uhc.stsetting 2