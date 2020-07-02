data modify storage uhc cfg.esoteric.Items set from block ~ ~ ~ Items

#> check if item was removed
#idk what the options are
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 0b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 1
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 1b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 2
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 2b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 3
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 3b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 4
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 4b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 5
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 5b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 6
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 6b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 7
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 7b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 8
execute unless data storage minecraft:uhc cfg.esoteric.Items[{Slot: 8b, tag: {config: 1b}}] run scoreboard players set esoteric uhc.cfg.opt 9
#...
#> clear item
#idk what the items are
clear @a[distance=..7, tag=!debugger] black_stained_glass_pane{config: 1b}
#clear @a[distance=..7, tag=!debugger] item{config: 1b}

#> do stuff
# put data bit to score esotog of uhc.internal, flip the bit, return to list
execute unless score esoteric uhc.cfg.opt matches 0 run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2
execute if score esoteric uhc.cfg.opt matches 1 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[0]
execute if score esoteric uhc.cfg.opt matches 2 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[1]
execute if score esoteric uhc.cfg.opt matches 3 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[2]
execute if score esoteric uhc.cfg.opt matches 4 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[3]
execute if score esoteric uhc.cfg.opt matches 5 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[4]
execute if score esoteric uhc.cfg.opt matches 6 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[5]
execute if score esoteric uhc.cfg.opt matches 7 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[6]
execute if score esoteric uhc.cfg.opt matches 8 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[7]
execute if score esoteric uhc.cfg.opt matches 9 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[8]
execute if score esoteric uhc.cfg.opt matches 10 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[9]
execute if score esoteric uhc.cfg.opt matches 11 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[10]
execute if score esoteric uhc.cfg.opt matches 12 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[11]
execute if score esoteric uhc.cfg.opt matches 13 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[12]
execute if score esoteric uhc.cfg.opt matches 14 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[13]
execute if score esoteric uhc.cfg.opt matches 15 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[14]
execute if score esoteric uhc.cfg.opt matches 16 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[15]
execute if score esoteric uhc.cfg.opt matches 17 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[16]
execute if score esoteric uhc.cfg.opt matches 18 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[17]
execute if score esoteric uhc.cfg.opt matches 19 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[18]
execute if score esoteric uhc.cfg.opt matches 20 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[19]
execute if score esoteric uhc.cfg.opt matches 21 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[20]
execute if score esoteric uhc.cfg.opt matches 22 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[21]
execute if score esoteric uhc.cfg.opt matches 23 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[22]
execute if score esoteric uhc.cfg.opt matches 24 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[23]
execute if score esoteric uhc.cfg.opt matches 25 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[24]
execute if score esoteric uhc.cfg.opt matches 26 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[25]
execute if score esoteric uhc.cfg.opt matches 27 store result score esotog uhc.internal run data get uhc cfg.esoteric.cfg[26]

scoreboard players set etflip uhc.internal 1
scoreboard players operation etflip uhc.internal -= esotog uhc.internal

execute if score esoteric uhc.cfg.opt matches 1 store result storage uhc cfg.esoteric.cfg[0] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 2 store result storage uhc cfg.esoteric.cfg[1] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 3 store result storage uhc cfg.esoteric.cfg[2] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 4 store result storage uhc cfg.esoteric.cfg[3] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 5 store result storage uhc cfg.esoteric.cfg[4] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 6 store result storage uhc cfg.esoteric.cfg[5] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 7 store result storage uhc cfg.esoteric.cfg[6] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 8 store result storage uhc cfg.esoteric.cfg[7] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 9 store result storage uhc cfg.esoteric.cfg[8] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 10 store result storage uhc cfg.esoteric.cfg[9] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 11 store result storage uhc cfg.esoteric.cfg[10] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 12 store result storage uhc cfg.esoteric.cfg[11] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 13 store result storage uhc cfg.esoteric.cfg[12] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 14 store result storage uhc cfg.esoteric.cfg[13] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 15 store result storage uhc cfg.esoteric.cfg[14] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 16 store result storage uhc cfg.esoteric.cfg[15] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 17 store result storage uhc cfg.esoteric.cfg[16] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 18 store result storage uhc cfg.esoteric.cfg[17] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 19 store result storage uhc cfg.esoteric.cfg[18] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 20 store result storage uhc cfg.esoteric.cfg[19] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 21 store result storage uhc cfg.esoteric.cfg[20] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 22 store result storage uhc cfg.esoteric.cfg[21] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 23 store result storage uhc cfg.esoteric.cfg[22] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 24 store result storage uhc cfg.esoteric.cfg[23] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 25 store result storage uhc cfg.esoteric.cfg[24] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 26 store result storage uhc cfg.esoteric.cfg[25] byte 1 run scoreboard players get etflip uhc.internal
execute if score esoteric uhc.cfg.opt matches 27 store result storage uhc cfg.esoteric.cfg[26] byte 1 run scoreboard players get etflip uhc.internal

#> fix gui
# fix coords here
data modify block ~ ~ ~ Items set from block ? ? ? Items

# make item enchanted if active, unenchanted if inactive
execute if score esoteric uhc.cfg.opt matches 1 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:1b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 2 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:2b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 3 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:3b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 4 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:4b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 5 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:5b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 6 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:6b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 7 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:7b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 8 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:8b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 9 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:9b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 10 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:10b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 11 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:11b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 12 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:12b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 13 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:13b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 14 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:14b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 15 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:15b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 16 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:16b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 17 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:17b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 18 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:18b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 19 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:19b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 20 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:20b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 21 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:21b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 22 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:22b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 23 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:23b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 24 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:24b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 25 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:25b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 26 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:26b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 27 if score etflip uhc.internal matches 0 run data modify block ~ ~ ~ Items[{Slot:27b}].tag merge from cfg.esoteric.inactive
execute if score esoteric uhc.cfg.opt matches 1 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:1b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 2 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:2b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 3 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:3b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 4 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:4b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 5 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:5b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 6 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:6b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 7 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:7b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 8 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:8b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 9 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:9b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 10 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:10b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 11 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:11b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 12 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:12b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 13 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:13b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 14 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:14b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 15 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:15b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 16 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:16b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 17 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:17b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 18 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:18b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 19 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:19b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 20 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:20b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 21 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:21b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 22 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:22b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 23 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:23b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 24 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:24b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 25 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:25b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 26 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:26b}].tag merge from cfg.esoteric.active
execute if score esoteric uhc.cfg.opt matches 27 if score etflip uhc.internal matches 1 run data modify block ~ ~ ~ Items[{Slot:27b}].tag merge from cfg.esoteric.active
#
scoreboard players set esoteric uhc.cfg.opt 0