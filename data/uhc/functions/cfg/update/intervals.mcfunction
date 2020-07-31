playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2

#> do stuff
# do something based off slot
execute if score interval uhc.cfg.opt matches 1 run scoreboard players add stillborder uhc.cfg 5
execute if score interval uhc.cfg.opt matches 2 run scoreboard players add border1 uhc.cfg 5
execute if score interval uhc.cfg.opt matches 3 run scoreboard players add borderstop uhc.cfg 5
execute if score interval uhc.cfg.opt matches 4 run scoreboard players add border2 uhc.cfg 5
execute if score interval uhc.cfg.opt matches 5 run scoreboard players add tilldm uhc.cfg 5
execute if score interval uhc.cfg.opt matches 8 run scoreboard players remove stillborder uhc.cfg 5
execute if score interval uhc.cfg.opt matches 9 run scoreboard players remove border1 uhc.cfg 5
execute if score interval uhc.cfg.opt matches 10 run scoreboard players remove borderstop uhc.cfg 5
execute if score interval uhc.cfg.opt matches 11 run scoreboard players remove border2 uhc.cfg 5
execute if score interval uhc.cfg.opt matches 12 run scoreboard players remove tilldm uhc.cfg 5

# execute if score interval uhc.cfg.opt matches 6 run scoreboard players set stillborder uhc.cfg 
# execute if score interval uhc.cfg.opt matches 6 run scoreboard players set border1 uhc.cfg 
# execute if score interval uhc.cfg.opt matches 6 run scoreboard players set borderstop uhc.cfg 
# execute if score interval uhc.cfg.opt matches 6 run scoreboard players set border2 uhc.cfg 
# execute if score interval uhc.cfg.opt matches 6 run scoreboard players set tilldm uhc.cfg 
execute if score interval uhc.cfg.opt matches 6 run tellraw @a[distance=..7, tag=!debugger] "Speedy preset not configured."
execute if score interval uhc.cfg.opt matches 7 run function uhc:cfg/default/intervals

# clamp
scoreboard players operation stillborder uhc.cfg > 0 constants
scoreboard players operation stillborder uhc.cfg < 60 constants
scoreboard players operation border1 uhc.cfg > 0 constants
scoreboard players operation border1 uhc.cfg < 60 constants
scoreboard players operation borderstop uhc.cfg > 0 constants
scoreboard players operation borderstop uhc.cfg < 60 constants
scoreboard players operation border2 uhc.cfg > 0 constants
scoreboard players operation border2 uhc.cfg < 60 constants
scoreboard players operation tilldm uhc.cfg > 0 constants
scoreboard players operation tilldm uhc.cfg < 60 constants
execute if score stillborder uhc.cfg matches 0 if score border1 uhc.cfg matches 0 if score borderstop uhc.cfg matches 0 if score border2 uhc.cfg matches 0 if score tilldm uhc.cfg matches 0 run scoreboard players set stillborder uhc.cfg 5

#measure in seconds (for border1 and 2)
scoreboard players operation border1s uhc.internal = border1 uhc.cfg
scoreboard players operation border2s uhc.internal = border2 uhc.cfg
scoreboard players operation border1s uhc.internal *= 60 constants
scoreboard players operation border2s uhc.internal *= 60 constants

# measure in ticks
scoreboard players operation stillbordert uhc.internal = stillborder uhc.cfg
scoreboard players operation border1t uhc.internal = border1 uhc.cfg
scoreboard players operation borderstopt uhc.internal = borderstop uhc.cfg
scoreboard players operation border2t uhc.internal = border2 uhc.cfg
scoreboard players operation tilldmt uhc.internal = tilldm uhc.cfg
scoreboard players operation stillbordert uhc.internal *= 1200 constants
scoreboard players operation border1t uhc.internal *= 1200 constants
scoreboard players operation borderstopt uhc.internal *= 1200 constants
scoreboard players operation border2t uhc.internal *= 1200 constants
scoreboard players operation tilldmt uhc.internal *= 1200 constants

# create cumulative tick scores in constants
scoreboard players operation interval.cumu uhc.cfg.opt = stillbordert uhc.internal
scoreboard players operation border1 uhc.internal = interval.cumu uhc.cfg.opt
scoreboard players operation interval.cumu uhc.cfg.opt += border1t uhc.internal
scoreboard players operation borderstop uhc.internal = interval.cumu uhc.cfg.opt
scoreboard players operation interval.cumu uhc.cfg.opt += borderstopt uhc.internal
scoreboard players operation border2 uhc.internal = interval.cumu uhc.cfg.opt
scoreboard players operation interval.cumu uhc.cfg.opt += border2t uhc.internal
scoreboard players operation dmwarn uhc.internal = interval.cumu uhc.cfg.opt
scoreboard players operation interval.cumu uhc.cfg.opt += tilldmt uhc.internal
scoreboard players operation deathmatch uhc.internal = interval.cumu uhc.cfg.opt

scoreboard players operation warn1 uhc.internal = border1 uhc.internal
scoreboard players operation warn2 uhc.internal = border1 uhc.internal
scoreboard players operation warn3 uhc.internal = border1 uhc.internal
scoreboard players operation warn1 uhc.internal -= 36000 constants
scoreboard players operation warn2 uhc.internal -= 18000 constants
scoreboard players operation warn3 uhc.internal -= 6000 constants
#> fix gui
data modify block ~ ~ ~ Items set from block 45 7 11 Items
execute unless score stillborder uhc.cfg matches 0 store result block ~ ~ ~ Items[{Slot: 9b}].Count byte 1 run scoreboard players get stillborder uhc.cfg
execute unless score border1 uhc.cfg matches 0 store result block ~ ~ ~ Items[{Slot: 10b}].Count byte 1 run scoreboard players get border1 uhc.cfg
execute unless score borderstop uhc.cfg matches 0 store result block ~ ~ ~ Items[{Slot: 11b}].Count byte 1 run scoreboard players get borderstop uhc.cfg
execute unless score border2 uhc.cfg matches 0 store result block ~ ~ ~ Items[{Slot: 12b}].Count byte 1 run scoreboard players get border2 uhc.cfg
execute unless score tilldm uhc.cfg matches 0 store result block ~ ~ ~ Items[{Slot: 13b}].Count byte 1 run scoreboard players get tilldm uhc.cfg
execute if score stillborder uhc.cfg matches 0 run data modify block ~ ~ ~ Items[{Slot:9b}].id set value "minecraft:black_concrete"
execute if score border1 uhc.cfg matches 0 run data modify block ~ ~ ~ Items[{Slot:10b}].id set value "minecraft:black_concrete"
execute if score borderstop uhc.cfg matches 0 run data modify block ~ ~ ~ Items[{Slot:11b}].id set value "minecraft:black_concrete"
execute if score border2 uhc.cfg matches 0 run data modify block ~ ~ ~ Items[{Slot:12b}].id set value "minecraft:black_concrete"
execute if score tilldm uhc.cfg matches 0 run data modify block ~ ~ ~ Items[{Slot:13b}].id set value "minecraft:black_concrete"

scoreboard players set interval uhc.cfg.opt 0
scoreboard players set interval.cumu uhc.cfg.opt 0
