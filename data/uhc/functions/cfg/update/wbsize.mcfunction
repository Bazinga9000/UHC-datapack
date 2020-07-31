playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2
#> do stuff
# do something based off slot

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
data modify storage uhc.cfg wbsize set from block 45 7 7 Items
let v = size_init_bor uhc.cfg run data modify storage uhc.cfg wbsize Items[{Slot:4b}].tag.display.Lore[0] set value '[{"text":"Diameter: ","color":"white","italic":false},{"text":"$v","color":"aqua"}]'
let v = size_bor_1 uhc.cfg run data modify storage uhc.cfg wbsize Items[{Slot:13b}].tag.display.Lore[0] set value '[{"text":"Diameter: ","color":"white","italic":false},{"text":"$v","color":"aqua"}]'
let v = size_bor_2 uhc.cfg run data modify storage uhc.cfg wbsize Items[{Slot:22b}].tag.display.Lore[0] set value '[{"text":"Diameter: ","color":"white","italic":false},{"text":"$v","color":"aqua"}]'

scoreboard players operation sizer_init_bor uhc.internal = size_init_bor uhc.cfg
scoreboard players operation sizer_bor_1 uhc.internal = size_bor_1 uhc.cfg
scoreboard players operation sizer_bor_2 uhc.internal = size_bor_2 uhc.cfg
scoreboard players operation sizer_init_bor uhc.internal /= 2 constants
scoreboard players operation sizer_bor_1 uhc.internal /= 2 constants
scoreboard players operation sizer_bor_2 uhc.internal /= 2 constants
let v = sizer_init_bor uhc.internal run data modify storage uhc.cfg wbsize Items[{Slot:4b}].tag.display.Lore[0] set value '[{"text":"Starts at: ","color":"white","italic":false},{"text":"±$v","color":"aqua"}]'
let v = sizer_bor_1 uhc.internal run data modify storage uhc.cfg wbsize Items[{Slot:13b}].tag.display.Lore[0] set value '[{"text":"Stops at: ","color":"white","italic":false},{"text":"±$v","color":"aqua"}]'
let v = sizer_bor_2 uhc.internal run data modify storage uhc.cfg wbsize Items[{Slot:22b}].tag.display.Lore[0] set value '[{"text":"Stops at: ","color":"white","italic":false},{"text":"±$v","color":"aqua"}]'
data modify block ~ ~ ~ Items set from storage uhc.cfg wbsize

scoreboard players set wbsize uhc.cfg.opt 0