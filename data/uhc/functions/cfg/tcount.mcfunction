#> check if item was removed
# -5 teams
execute unless data block ~ ~ ~ Items[{Slot: 2b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 1
# -1 team
execute unless data block ~ ~ ~ Items[{Slot: 3b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 2
# +1 team
execute unless data block ~ ~ ~ Items[{Slot: 5b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 4
# +5 team
execute unless data block ~ ~ ~ Items[{Slot: 6b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 5
# solos
execute unless data block ~ ~ ~ Items[{Slot: 20b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 6
# duos
execute unless data block ~ ~ ~ Items[{Slot: 21b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 7
# trios
execute unless data block ~ ~ ~ Items[{Slot: 22b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 8
# quartets
execute unless data block ~ ~ ~ Items[{Slot: 23b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 9
# quintets
execute unless data block ~ ~ ~ Items[{Slot: 24b, tag: {config: 1b}}] run scoreboard players set tcount uhc.cfg.opt 10

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

execute unless score tcount uhc.cfg.opt matches 0 run function uhc:cfg/update/tcount