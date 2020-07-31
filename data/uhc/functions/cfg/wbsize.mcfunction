#> check if item was removed
## initial border
# -100 diam
execute unless data block ~ ~ ~ Items[{Slot: 0b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 1
# -10 diam
execute unless data block ~ ~ ~ Items[{Slot: 1b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 2
# -5 diam
execute unless data block ~ ~ ~ Items[{Slot: 2b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 3
# -1 diam
execute unless data block ~ ~ ~ Items[{Slot: 3b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 4
# +1 diam
execute unless data block ~ ~ ~ Items[{Slot: 5b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 5
# +5 diam
execute unless data block ~ ~ ~ Items[{Slot: 6b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 6
# +10 diam
execute unless data block ~ ~ ~ Items[{Slot: 7b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 7
# +100 diam
execute unless data block ~ ~ ~ Items[{Slot: 8b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 8
## border 1
execute unless data block ~ ~ ~ Items[{Slot: 9b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 9
execute unless data block ~ ~ ~ Items[{Slot: 10b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 10
execute unless data block ~ ~ ~ Items[{Slot: 11b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 11
execute unless data block ~ ~ ~ Items[{Slot: 12b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 12
execute unless data block ~ ~ ~ Items[{Slot: 14b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 13
execute unless data block ~ ~ ~ Items[{Slot: 15b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 14
execute unless data block ~ ~ ~ Items[{Slot: 16b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 15
execute unless data block ~ ~ ~ Items[{Slot: 17b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 16
## border 2
execute unless data block ~ ~ ~ Items[{Slot: 18b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 17
execute unless data block ~ ~ ~ Items[{Slot: 19b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 18
execute unless data block ~ ~ ~ Items[{Slot: 20b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 19
execute unless data block ~ ~ ~ Items[{Slot: 21b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 20
execute unless data block ~ ~ ~ Items[{Slot: 23b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 21
execute unless data block ~ ~ ~ Items[{Slot: 24b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 22
execute unless data block ~ ~ ~ Items[{Slot: 25b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 23
execute unless data block ~ ~ ~ Items[{Slot: 26b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 24

#> clear item
clear @a[distance=..7, tag=!debugger] red_terracotta{config: 1b}
clear @a[distance=..7, tag=!debugger] red_concrete{config: 1b}
clear @a[distance=..7, tag=!debugger] pink_terracotta{config: 1b}
clear @a[distance=..7, tag=!debugger] pink_concrete{config: 1b}
clear @a[distance=..7, tag=!debugger] white_concrete{config: 1b}
clear @a[distance=..7, tag=!debugger] lime_terracotta{config: 1b}
clear @a[distance=..7, tag=!debugger] lime_concrete{config: 1b}
clear @a[distance=..7, tag=!debugger] green_terracotta{config: 1b}
clear @a[distance=..7, tag=!debugger] green_concrete{config: 1b}

execute unless score wbsize uhc.cfg.opt matches 0 run function uhc:cfg/update/wbsize