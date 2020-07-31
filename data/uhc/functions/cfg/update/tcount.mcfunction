playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2

#> do stuff
# do something based off slot
execute if score tcount uhc.cfg.opt matches 1 run scoreboard players remove num_teams uhc.cfg 5
execute if score tcount uhc.cfg.opt matches 2 run scoreboard players remove num_teams uhc.cfg 1
execute if score tcount uhc.cfg.opt matches 4 run scoreboard players add num_teams uhc.cfg 1
execute if score tcount uhc.cfg.opt matches 5 run scoreboard players add num_teams uhc.cfg 5
execute if score tcount uhc.cfg.opt matches 6..10 run scoreboard players operation num_teams uhc.cfg = num_players uhc.internal
execute if score tcount uhc.cfg.opt matches 7 run scoreboard players operation num_teams uhc.cfg /= 2 constants
execute if score tcount uhc.cfg.opt matches 8 run scoreboard players operation num_teams uhc.cfg /= 3 constants
execute if score tcount uhc.cfg.opt matches 9 run scoreboard players operation num_teams uhc.cfg /= 4 constants
execute if score tcount uhc.cfg.opt matches 10 run scoreboard players operation num_teams uhc.cfg /= 5 constants

# clamp
scoreboard players operation num_teams uhc.cfg > min_teams uhc.cfg
scoreboard players operation num_teams uhc.cfg < max_teams uhc.cfg

#> fix gui
data modify block ~ ~ ~ Items set from block 45 7 13 Items
execute store result block ~ ~ ~ Items[{Slot: 4b}].Count byte 1 run scoreboard players get num_teams uhc.cfg

scoreboard players set tcount uhc.cfg.opt 0