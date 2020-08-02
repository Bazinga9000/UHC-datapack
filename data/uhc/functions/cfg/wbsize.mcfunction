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

#screw consistency (add white concrete as an option so that game actually bothers to update)
execute unless data block ~ ~ ~ Items[{Slot: 4b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 25
execute unless data block ~ ~ ~ Items[{Slot: 13b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 25
execute unless data block ~ ~ ~ Items[{Slot: 22b, tag: {config: 1b}}] run scoreboard players set wbsize uhc.cfg.opt 25

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

#> do stuff
# do something based off slot
execute unless score wbsize uhc.cfg.opt matches 0 unless score wbsize uhc.cfg.opt matches 25 run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2

execute if score wbsize uhc.cfg.opt matches 1 run scoreboard players remove size_init_bor uhc.cfg 100
execute if score wbsize uhc.cfg.opt matches 2 run scoreboard players remove size_init_bor uhc.cfg 10
execute if score wbsize uhc.cfg.opt matches 3 run scoreboard players remove size_init_bor uhc.cfg 5
execute if score wbsize uhc.cfg.opt matches 4 run scoreboard players remove size_init_bor uhc.cfg 1
execute if score wbsize uhc.cfg.opt matches 5 run scoreboard players add size_init_bor uhc.cfg 1
execute if score wbsize uhc.cfg.opt matches 6 run scoreboard players add size_init_bor uhc.cfg 5
execute if score wbsize uhc.cfg.opt matches 7 run scoreboard players add size_init_bor uhc.cfg 10
execute if score wbsize uhc.cfg.opt matches 8 run scoreboard players add size_init_bor uhc.cfg 100

execute if score wbsize uhc.cfg.opt matches 9 run scoreboard players remove size_bor_1 uhc.cfg 100
execute if score wbsize uhc.cfg.opt matches 10 run scoreboard players remove size_bor_1 uhc.cfg 10
execute if score wbsize uhc.cfg.opt matches 11 run scoreboard players remove size_bor_1 uhc.cfg 5
execute if score wbsize uhc.cfg.opt matches 12 run scoreboard players remove size_bor_1 uhc.cfg 1
execute if score wbsize uhc.cfg.opt matches 13 run scoreboard players add size_bor_1 uhc.cfg 1
execute if score wbsize uhc.cfg.opt matches 14 run scoreboard players add size_bor_1 uhc.cfg 5
execute if score wbsize uhc.cfg.opt matches 15 run scoreboard players add size_bor_1 uhc.cfg 10
execute if score wbsize uhc.cfg.opt matches 16 run scoreboard players add size_bor_1 uhc.cfg 100

execute if score wbsize uhc.cfg.opt matches 17 run scoreboard players remove size_bor_2 uhc.cfg 100
execute if score wbsize uhc.cfg.opt matches 18 run scoreboard players remove size_bor_2 uhc.cfg 10
execute if score wbsize uhc.cfg.opt matches 19 run scoreboard players remove size_bor_2 uhc.cfg 5
execute if score wbsize uhc.cfg.opt matches 20 run scoreboard players remove size_bor_2 uhc.cfg 1
execute if score wbsize uhc.cfg.opt matches 21 run scoreboard players add size_bor_2 uhc.cfg 1
execute if score wbsize uhc.cfg.opt matches 22 run scoreboard players add size_bor_2 uhc.cfg 5
execute if score wbsize uhc.cfg.opt matches 23 run scoreboard players add size_bor_2 uhc.cfg 10
execute if score wbsize uhc.cfg.opt matches 24 run scoreboard players add size_bor_2 uhc.cfg 100

# clamp
# 60000000 >= size_init_bor >= size_bor_1 >= size_bor_2 >= 1
scoreboard players operation size_init_bor uhc.cfg < 60000000 constants
scoreboard players operation size_init_bor uhc.cfg > size_bor_1 uhc.cfg

scoreboard players operation size_bor_1 uhc.cfg < size_init_bor uhc.cfg
scoreboard players operation size_bor_1 uhc.cfg > size_bor_2 uhc.cfg

scoreboard players operation size_bor_2 uhc.cfg < size_bor_1 uhc.cfg
scoreboard players operation size_bor_2 uhc.cfg > 1 constants

#> fix gui
# screw consistency (only run when something changes to reduce console spam)
scoreboard players operation sizer_init_bor uhc.internal = size_init_bor uhc.cfg
scoreboard players operation sizer_bor_1 uhc.internal = size_bor_1 uhc.cfg
scoreboard players operation sizer_bor_2 uhc.internal = size_bor_2 uhc.cfg
scoreboard players operation sizer_init_bor uhc.internal /= 2 constants
scoreboard players operation sizer_bor_1 uhc.internal /= 2 constants
scoreboard players operation sizer_bor_2 uhc.internal /= 2 constants

execute unless score wbsize uhc.cfg.opt matches 0 run function uhc:cfg/update_gui/wbsize
scoreboard players operation spread_range uhc.internal = size_init_bor uhc.cfg
scoreboard players operation spread_range uhc.internal /= 8 constants
scoreboard players operation spread_max uhc.internal = size_init_bor uhc.cfg
scoreboard players operation spread_max uhc.internal *= 11 constants
scoreboard players operation spread_max uhc.internal /= 24 constants
scoreboard players operation spread_max uhc.internal > 1 constants

scoreboard players set wbsize uhc.cfg.opt 0