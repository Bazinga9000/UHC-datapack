# check if teams should be scrambled together
scoreboard players set respect_teams uhc.stsetting 1
execute if score sardines uhc.esoteric matches 1 run scoreboard players set respect_teams uhc.stsetting 0
execute if score mafia uhc.esoteric matches 1 run scoreboard players set respect_teams uhc.stsetting 0

# check if teams should be created
# if 0, soft_clear, rand_min, announce_teams are ignored
scoreboard players set make_teams uhc.stsetting 1
execute if score sardines uhc.esoteric matches 1 run scoreboard players set make_teams uhc.stsetting 0

# check if players in UHC teams should be soft or hard cleared before assigning teams
scoreboard players set soft_clear uhc.stsetting 0
execute if score boss uhc.esoteric matches 1 run scoreboard players set soft_clear uhc.stsetting 1

# value marking that every team >= the value should have players added to it
scoreboard players set rand_min uhc.stsetting 1
execute if score boss uhc.esoteric matches 1 run scoreboard players set rand_min uhc.stsetting 2

# check if teams should be announced on assigning
scoreboard players set announce_teams uhc.stsetting 1
execute if score mafia uhc.esoteric matches 1 run scoreboard players set announce_teams uhc.stsetting 0

## prefixes on teams
# if 0, announce_teams is ignored
scoreboard players set show_prefixes uhc.stsetting 1
execute if score mafia uhc.esoteric matches 1 run scoreboard players set show_prefixes uhc.stsetting 0

execute unless score show_prefixes uhc.stsetting matches 1 run function uhc:teams/add_prefixes
execute if score show_prefixes uhc.stsetting matches 1 run function uhc:teams/remove_prefixes
execute if score show_prefixes uhc.stsetting matches 1 run scoreboard players set announce_teams uhc.stsetting 0

## friendly fire on teams
scoreboard players set friendly_fire uhc.stsetting 0
execute if score mafia uhc.esoteric matches 1 run scoreboard players set friendly_fire uhc.stsetting 1

execute unless score friendly_fire uhc.stsetting matches 1 run for i in 1..64 run team modify team$i friendlyFire false
execute if score friendly_fire uhc.stsetting matches 1 run for i in 1..64 run team modify team$i friendlyFire true

# use mafia randomizer
scoreboard players set mafia_rand uhc.stsetting 0
execute if score mafia uhc.esoteric matches 1 run scoreboard players set mafia_rand uhc.stsetting 1