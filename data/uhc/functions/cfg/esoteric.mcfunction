#> check if item was removed
#idk what the options are
#gone fishing
execute unless data block ~ ~ ~ Items[{Slot: 0b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 1
#boss uhc
execute unless data block ~ ~ ~ Items[{Slot: 1b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 2
#always elytra
execute unless data block ~ ~ ~ Items[{Slot: 2b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 3
#sardines
execute unless data block ~ ~ ~ Items[{Slot: 3b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 4
#health bonus
execute unless data block ~ ~ ~ Items[{Slot: 4b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 5
#2x d/n
execute unless data block ~ ~ ~ Items[{Slot: 5b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 6
#covert teams
execute unless data block ~ ~ ~ Items[{Slot: 6b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 7
#wither
execute unless data block ~ ~ ~ Items[{Slot: 7b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 8
#spawn in nether
execute unless data block ~ ~ ~ Items[{Slot: 8b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 9
#always day
execute unless data block ~ ~ ~ Items[{Slot: 9b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 10
#always night
execute unless data block ~ ~ ~ Items[{Slot: 10b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 11
#speed bonus
execute unless data block ~ ~ ~ Items[{Slot: 11b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 12
#1.8 combat
execute unless data block ~ ~ ~ Items[{Slot: 12b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 13
# bomberman
execute unless data block ~ ~ ~ Items[{Slot: 13b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 14
# reset to defaults
execute unless data block ~ ~ ~ Items[{Slot: 26b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 27

#> clear item
#idk what the items are
clear @a[distance=..7, tag=!debugger] black_stained_glass_pane{config: 1b}
clear @a[distance=..7, tag=!debugger] fishing_rod{config: 1b}
clear @a[distance=..7, tag=!debugger] dragon_head{config: 1b}
clear @a[distance=..7, tag=!debugger] elytra{config: 1b}
clear @a[distance=..7, tag=!debugger] tropical_fish{config: 1b}
clear @a[distance=..7, tag=!debugger] apple{config: 1b}
clear @a[distance=..7, tag=!debugger] clock{config: 1b}
clear @a[distance=..7, tag=!debugger] leather_helmet{config: 1b}
clear @a[distance=..7, tag=!debugger] wither_skeleton_skull{config: 1b}
clear @a[distance=..7, tag=!debugger] netherrack{config: 1b}
clear @a[distance=..7, tag=!debugger] glowstone{config: 1b}
clear @a[distance=..7, tag=!debugger] light_gray_concrete{config: 1b}
clear @a[distance=..7, tag=!debugger] grass_block{config: 1b}
clear @a[distance=..7, tag=!debugger] iron_sword{config: 1b}
clear @a[distance=..7, tag=!debugger] soul_sand{config: 1b}
clear @a[distance=..7, tag=!debugger] ice{config: 1b}
clear @a[distance=..7, tag=!debugger] packed_ice{config: 1b}
clear @a[distance=..7, tag=!debugger] blue_ice{config: 1b}
clear @a[distance=..7, tag=!debugger] fermented_spider_eye{config: 1b}
clear @a[distance=..7, tag=!debugger] golden_apple{config: 1b}
clear @a[distance=..7, tag=!debugger] enchanted_golden_apple{config: 1b}
clear @a[distance=..7, tag=!debugger] gunpowder{config: 1b}
clear @a[distance=..7, tag=!debugger] creeper_head{config: 1b}
#clear @a[distance=..7, tag=!debugger] item{config: 1b}

execute unless score esoteric uhc.cfg.opt matches 0 run function uhc:cfg/update/esoteric