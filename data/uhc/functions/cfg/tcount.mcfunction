data modify storage uhc cfg.tcount.Items set from block ~ ~ ~ Items

#> check if item was removed
# -5 teams
execute unless data storage minecraft:uhc cfg.tcount.Items[{Slot: 2b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 1
# -1 team
execute unless data storage minecraft:uhc cfg.tcount.Items[{Slot: 3b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 2
# +1 team
execute unless data storage minecraft:uhc cfg.tcount.Items[{Slot: 5b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 4
# +5 team
execute unless data storage minecraft:uhc cfg.tcount.Items[{Slot: 6b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 5
# solos
execute unless data storage minecraft:uhc cfg.tcount.Items[{Slot: 20b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 6
# duos
execute unless data storage minecraft:uhc cfg.tcount.Items[{Slot: 21b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 7
# trios
execute unless data storage minecraft:uhc cfg.tcount.Items[{Slot: 22b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 8
# quartets
execute unless data storage minecraft:uhc cfg.tcount.Items[{Slot: 23b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 9
# quintets
execute unless data storage minecraft:uhc cfg.tcount.Items[{Slot: 24b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 10

#> clear item
clear @a[distance=..7, tag=!debugger] black_stained_glass_pane{config: 1b}
clear @a[distance=..7, tag=!debugger] red_terracotta{config: 1b}
clear @a[distance=..7, tag=!debugger] pink_terracotta{config: 1b}
clear @a[distance=..7, tag=!debugger] white_concrete{config: 1b}
clear @a[distance=..7, tag=!debugger] lime_terracotta{config: 1b}
clear @a[distance=..7, tag=!debugger] green_terracotta{config: 1b}
clear @a[distance=..7, tag=!debugger] red_dye{config: 1b}
clear @a[distance=..7, tag=!debugger] orange_dye{config: 1b}
clear @a[distance=..7, tag=!debugger] yellow_dye{config: 1b}
clear @a[distance=..7, tag=!debugger] green_dye{config: 1b}
clear @a[distance=..7, tag=!debugger] blue_dye{config: 1b}

#> do stuff
# do something based off slot
execute unless score tcount uhc.cfg.opt matches 0 run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2
execute if score tcount uhc.cfg.opt matches 1 run scoreboard players remove num_teams uhc.cfg 5
execute if score tcount uhc.cfg.opt matches 2 run scoreboard players remove num_teams uhc.cfg 1
execute if score tcount uhc.cfg.opt matches 4 run scoreboard players add num_teams uhc.cfg 1
execute if score tcount uhc.cfg.opt matches 5 run scoreboard players add num_teams uhc.cfg 5
execute if score tcount uhc.cfg.opt matches 6..10 run scoreboard players operation num_teams uhc.cfg = num_players uhc.internal
execute if score tcount uhc.cfg.opt matches 7 run scoreboard players operation num_teams uhc.cfg /= 2 constants
execute if score tcount uhc.cfg.opt matches 8 run scoreboard players operation num_teams uhc.cfg /= 3 constants
execute if score tcount uhc.cfg.opt matches 9 run scoreboard players operation num_teams uhc.cfg /= 4 constants
execute if score tcount uhc.cfg.opt matches 10 run scoreboard players operation num_teams uhc.cfg /= 5 constants

# clamp
scoreboard players operation num_teams uhc.cfg > min_teams uhc.cfg
scoreboard players operation num_teams uhc.cfg < max_teams uhc.cfg

#> fix gui
data modify block ~ ~ ~ Items set from block 45 7 13 Items
execute store result block ~ ~ ~ Items[{Slot: 4b}].Count byte 1 run scoreboard players get num_teams uhc.cfg
scoreboard players set tcount uhc.cfg.opt 0
