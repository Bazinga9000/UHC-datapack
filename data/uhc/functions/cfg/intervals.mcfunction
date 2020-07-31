#> check if item was removed
# +5 mins
execute unless data block ~ ~ ~ Items[{Slot: 0b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 1
execute unless data block ~ ~ ~ Items[{Slot: 1b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 2
execute unless data block ~ ~ ~ Items[{Slot: 2b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 3
execute unless data block ~ ~ ~ Items[{Slot: 3b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 4
execute unless data block ~ ~ ~ Items[{Slot: 4b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 5
# speedy preset
execute unless data block ~ ~ ~ Items[{Slot: 15b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 6
# default preset
execute unless data block ~ ~ ~ Items[{Slot: 16b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 7
# -5 mins
execute unless data block ~ ~ ~ Items[{Slot: 18b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 8
execute unless data block ~ ~ ~ Items[{Slot: 19b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 9
execute unless data block ~ ~ ~ Items[{Slot: 20b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 10
execute unless data block ~ ~ ~ Items[{Slot: 21b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 11
execute unless data block ~ ~ ~ Items[{Slot: 22b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 12

#> clear item
clear @a[distance=..7, tag=!debugger] black_stained_glass_pane{config: 1b}
clear @a[distance=..7, tag=!debugger] red_terracotta{config: 1b}
clear @a[distance=..7, tag=!debugger] white_concrete{config: 1b}
clear @a[distance=..7, tag=!debugger] black_concrete{config: 1b}
clear @a[distance=..7, tag=!debugger] green_terracotta{config: 1b}
clear @a[distance=..7, tag=!debugger] feather{config: 1b}
clear @a[distance=..7, tag=!debugger] netherite_ingot{config: 1b}

execute unless score interval uhc.cfg.opt matches 0 run function uhc:cfg/update/intervals