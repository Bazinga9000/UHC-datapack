data modify storage uhc cfg.esoteric.Items set from block ~ ~ ~ Items

#> check if item was removed
#idk what the options are
#gone fishing
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 0b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 1
#boss uhc
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 1b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 2
#always elytra
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 2b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 3
#sardines
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 3b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 4
#health bonus
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 4b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 5
#2x d/n
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 5b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 6
#covert teams
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 6b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 7
#wither
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 7b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 8
#spawn in nether
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 8b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 9
#always day
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 9b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 10
#always night
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 10b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 11
#speed bonus
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 11b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 12
#1.8 combat
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 12b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 13
# reset to defaults
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 26b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 27

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
clear @a[distance=..7, tag=!debugger] fermented_spider_eye{config: 1b}
clear @a[distance=..7, tag=!debugger] golden_apple{config: 1b}
clear @a[distance=..7, tag=!debugger] enchanted_golden_apple{config: 1b}
clear @a[distance=..7, tag=!debugger] creeper_head{config: 1b}
#clear @a[distance=..7, tag=!debugger] item{config: 1b}

#> store values on esoteric scoreboard
execute unless score esoteric uhc.cfg.opt matches 0 run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2

# increment 1 in each
execute if score esoteric uhc.cfg.opt matches 1 run scoreboard players add gone_fishing uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 2 run scoreboard players add boss uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 3 run scoreboard players add always_elytra uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 4 run scoreboard players add sardines uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 5 run scoreboard players add max_health uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 6 run scoreboard players add dn_speed uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 7 run scoreboard players add covert_teams uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 8 run scoreboard players add wither_bonus uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 9 run scoreboard players add nether_spawn uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 10 run scoreboard players add always_day uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 11 run scoreboard players add always_night uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 12 run scoreboard players add mv_speed uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 13 run scoreboard players add combat_type uhc.esoteric 1
# bit flippers
scoreboard players operation gone_fishing %= 2 constants
scoreboard players operation boss %= 2 constants
scoreboard players operation always_elytra %= 2 constants
scoreboard players operation sardines %= 2 constants
scoreboard players operation dn_speed %= 2 constants
scoreboard players operation covert_teams %= 2 constants
scoreboard players operation wither_bonus %= 2 constants
scoreboard players operation nether_spawn %= 2 constants
scoreboard players operation always_day %= 2 constants
scoreboard players operation always_night %= 2 constants
scoreboard players operation combat_type %= 2 constants

# enums
scoreboard players operation max_health %= 4 constants
scoreboard players operation mv_speed %= 4 constants

# reset to default
execute if score esoteric uhc.cfg.opt matches 27 function uhc:cfg/default/esoteric

#> update gui
# fix coords here
data modify block ~ ~ ~ Items set from block 45 7 9 Items

# make item enchanted if active, unenchanted if inactive
#
scoreboard players set esoteric uhc.cfg.opt 0