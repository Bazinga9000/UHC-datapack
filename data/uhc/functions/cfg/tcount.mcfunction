data modify storage cfg.tcount Items set from block ~ ~ ~ Items

#> check if item was removed
# -5 teams
execute unless data storage minecraft:cfg.tcount Items[{Slot: 2b, tag: {config: 1b}}] run scoreboard players set tcount cfg 1
# -1 team
execute unless data storage minecraft:cfg.tcount Items[{Slot: 3b, tag: {config: 1b}}] run scoreboard players set tcount cfg 2
# +1 team
execute unless data storage minecraft:cfg.tcount Items[{Slot: 5b, tag: {config: 1b}}] run scoreboard players set tcount cfg 4
# +5 team
execute unless data storage minecraft:cfg.tcount Items[{Slot: 6b, tag: {config: 1b}}] run scoreboard players set tcount cfg 5
# solos
execute unless data storage minecraft:cfg.tcount Items[{Slot: 20b, tag: {config: 1b}}] run scoreboard players set tcount cfg 6
# duos
execute unless data storage minecraft:cfg.tcount Items[{Slot: 21b, tag: {config: 1b}}] run scoreboard players set tcount cfg 7
# trios
execute unless data storage minecraft:cfg.tcount Items[{Slot: 22b, tag: {config: 1b}}] run scoreboard players set tcount cfg 8
# quartets
execute unless data storage minecraft:cfg.tcount Items[{Slot: 23b, tag: {config: 1b}}] run scoreboard players set tcount cfg 9
# quintets
execute unless data storage minecraft:cfg.tcount Items[{Slot: 24b, tag: {config: 1b}}] run scoreboard players set tcount cfg 10

#> clear item
# tag is there so it's easier to dev around the shulker boxes
clear @a[distance=..7, tag=!dev_no_clear] black_stained_glass_pane{config: 1b}
clear @a[distance=..7, tag=!dev_no_clear] red_terracotta{config: 1b}
clear @a[distance=..7, tag=!dev_no_clear] pink_terracotta{config: 1b}
clear @a[distance=..7, tag=!dev_no_clear] white_concrete{config: 1b}
clear @a[distance=..7, tag=!dev_no_clear] lime_terracotta{config: 1b}
clear @a[distance=..7, tag=!dev_no_clear] green_terracotta{config: 1b}
clear @a[distance=..7, tag=!dev_no_clear] red_dye{config: 1b}
clear @a[distance=..7, tag=!dev_no_clear] orange_dye{config: 1b}
clear @a[distance=..7, tag=!dev_no_clear] yellow_dye{config: 1b}
clear @a[distance=..7, tag=!dev_no_clear] green_dye{config: 1b}
clear @a[distance=..7, tag=!dev_no_clear] blue_dye{config: 1b}

#> do stuff
# change slot
execute store result block 45 7 13 Items[{Slot: 4b}].Count byte 1 run scoreboard players get num_teams settings

# do something based off slot
execute if score tcount cfg matches 1 run scoreboard players operation num_teams settings -= 5 constants
execute if score tcount cfg matches 2 run scoreboard players operation num_teams settings -= 1 constants
execute if score tcount cfg matches 4 run scoreboard players operation num_teams settings += 1 constants
execute if score tcount cfg matches 5 run scoreboard players operation num_teams settings += 5 constants
execute if score tcount cfg matches 6..10 run scoreboard players operation num_teams settings = num_players settings
execute if score tcount cfg matches 7 run scoreboard players operation num_teams settings /= 2 constants
execute if score tcount cfg matches 8 run scoreboard players operation num_teams settings /= 3 constants
execute if score tcount cfg matches 9 run scoreboard players operation num_teams settings /= 4 constants
execute if score tcount cfg matches 10 run scoreboard players operation num_teams settings /= 5 constants

# clamp
scoreboard players operation num_teams settings > min_teams settings
scoreboard players operation num_teams settings < max_teams settings

#> fix gui
data modify block ~ ~ ~ Items set from block 45 7 13 Items
scoreboard players set tcount cfg 0

