data modify storage cfg.interval Items set from block ~ ~ ~ Items

#> check if item was removed
# +5 mins
execute unless data storage minecraft:cfg.interval Items[{Slot: 0b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 1
execute unless data storage minecraft:cfg.interval Items[{Slot: 1b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 2
execute unless data storage minecraft:cfg.interval Items[{Slot: 2b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 3
execute unless data storage minecraft:cfg.interval Items[{Slot: 3b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 4
execute unless data storage minecraft:cfg.interval Items[{Slot: 4b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 5
# speedy preset
execute unless data storage minecraft:cfg.interval Items[{Slot: 15b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 6
# default preset
execute unless data storage minecraft:cfg.interval Items[{Slot: 16b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 7
# -5 mins
execute unless data storage minecraft:cfg.interval Items[{Slot: 18b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 8
execute unless data storage minecraft:cfg.interval Items[{Slot: 19b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 9
execute unless data storage minecraft:cfg.interval Items[{Slot: 20b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 10
execute unless data storage minecraft:cfg.interval Items[{Slot: 21b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 11
execute unless data storage minecraft:cfg.interval Items[{Slot: 22b, tag: {config: 1b}}] run scoreboard players set interval uhc.cfg.opt 12

#> clear item
clear @a[distance=..7, tag=!debugger] black_stained_glass_pane{config: 1b}
clear @a[distance=..7, tag=!debugger] red_terracotta{config: 1b}
clear @a[distance=..7, tag=!debugger] white_concrete{config: 1b}
clear @a[distance=..7, tag=!debugger] green_terracotta{config: 1b}
clear @a[distance=..7, tag=!debugger] feather{config: 1b}
clear @a[distance=..7, tag=!debugger] netherite_ingot{config: 1b}

#> do stuff
# do something based off slot
execute unless score interval uhc.cfg.opt matches 0 run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2
execute if score interval uhc.cfg.opt matches 1 run scoreboard players add stillborder settings 5
execute if score interval uhc.cfg.opt matches 2 run scoreboard players add border1 settings 5
execute if score interval uhc.cfg.opt matches 3 run scoreboard players add borderstop settings 5
execute if score interval uhc.cfg.opt matches 4 run scoreboard players add border2 settings 5
execute if score interval uhc.cfg.opt matches 5 run scoreboard players add tilldm settings 5
execute if score interval uhc.cfg.opt matches 8 run scoreboard players remove stillborder settings 5
execute if score interval uhc.cfg.opt matches 9 run scoreboard players remove border1 settings 5
execute if score interval uhc.cfg.opt matches 10 run scoreboard players remove borderstop settings 5
execute if score interval uhc.cfg.opt matches 11 run scoreboard players remove border2 settings 5
execute if score interval uhc.cfg.opt matches 12 run scoreboard players remove tilldm settings 5

# execute if score interval uhc.cfg.opt matches 6 run scoreboard players set stillborder settings 
# execute if score interval uhc.cfg.opt matches 6 run scoreboard players set border1 settings 
# execute if score interval uhc.cfg.opt matches 6 run scoreboard players set borderstop settings 
# execute if score interval uhc.cfg.opt matches 6 run scoreboard players set border2 settings 
# execute if score interval uhc.cfg.opt matches 6 run scoreboard players set tilldm settings 
execute if score interval uhc.cfg.opt matches 6 run tellraw @a[distance=..7, tag=!debugger] "Speedy preset not configured."
execute if score interval uhc.cfg.opt matches 7 run scoreboard players set stillborder settings 60
execute if score interval uhc.cfg.opt matches 7 run scoreboard players set border1 settings 15
execute if score interval uhc.cfg.opt matches 7 run scoreboard players set borderstop settings 5
execute if score interval uhc.cfg.opt matches 7 run scoreboard players set border2 settings 10
execute if score interval uhc.cfg.opt matches 7 run scoreboard players set tilldm settings 5

# clamp
scoreboard players operation stillborder settings > 0 constants
scoreboard players operation stillborder settings < 60 constants
scoreboard players operation border1 settings > 0 constants
scoreboard players operation border1 settings < 60 constants
scoreboard players operation borderstop settings > 0 constants
scoreboard players operation borderstop settings < 60 constants
scoreboard players operation border2 settings > 0 constants
scoreboard players operation border2 settings < 60 constants
scoreboard players operation tilldm settings > 0 constants
scoreboard players operation tilldm settings < 60 constants

# create cumulative tick scores in constants
scoreboard players operation interval.cumu uhc.cfg.opt = stillborder settings
scoreboard players operation border1 constants = interval.cumu uhc.cfg.opt
scoreboard players operation interval.cumu uhc.cfg.opt += border1 settings
scoreboard players operation borderstop constants = interval.cumu uhc.cfg.opt
scoreboard players operation interval.cumu uhc.cfg.opt += borderstop settings
scoreboard players operation border2 constants = interval.cumu uhc.cfg.opt
scoreboard players operation interval.cumu uhc.cfg.opt += border2 settings
scoreboard players operation dmwarn constants = interval.cumu uhc.cfg.opt
scoreboard players operation interval.cumu uhc.cfg.opt += tilldm settings
scoreboard players operation deathmatch constants = interval.cumu cfg

scoreboard players operation border1 constants *= 1200 constants
scoreboard players operation borderstop constants *= 1200 constants
scoreboard players operation border2 constants *= 1200 constants
scoreboard players operation dmwarn constants *= 1200 constants
scoreboard players operation deathmatch constants *= 1200 constants

scoreboard players operation warn1 constants = border1 constants
scoreboard players operation warn2 constants = border1 constants
scoreboard players operation warn3 constants = border1 constants
scoreboard players operation warn1 constants -= 36000 constants
scoreboard players operation warn2 constants -= 18000 constants
scoreboard players operation warn3 constants -= 6000 constants
#> fix gui
data modify block ~ ~ ~ Items set from block 45 7 11 Items
execute store result block ~ ~ ~ Items[{Slot: 9b}].Count byte 1 run scoreboard players get stillborder settings
execute store result block ~ ~ ~ Items[{Slot: 10b}].Count byte 1 run scoreboard players get border1 settings
execute store result block ~ ~ ~ Items[{Slot: 11b}].Count byte 1 run scoreboard players get borderstop settings
execute store result block ~ ~ ~ Items[{Slot: 12b}].Count byte 1 run scoreboard players get border2 settings
execute store result block ~ ~ ~ Items[{Slot: 13b}].Count byte 1 run scoreboard players get tilldm settings
scoreboard players set interval uhc.cfg.opt 0
scoreboard players set interval.cumu uhc.cfg.opt 0
