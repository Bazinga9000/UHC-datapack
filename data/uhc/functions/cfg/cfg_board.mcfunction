#> Public display of configurations

# # of teams
data merge block -11 12 2 {Text3:'{"color":"#401010","score":{"name":"num_teams","objective":"uhc.cfg"}}'}
# # of players and spectators
data merge block -11 12 1 {Text1:'{"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"Players (\\",\\"color\\":\\"yellow\\"},{\\"score\\":{\\"name\\":\\"num_players\\",\\"objective\\":\\"uhc.internal\\"}},{\\"text\\":\\")\\"},{\\"text\\":\\": \\",\\"color\\":\\"gray\\"},{\\"selector\\":\\"@a[tag=!spectator]\\",\\"color\\":\\"white\\"}]"},"text":"# of Players:"}'}
data merge block -11 12 1 {Text3:'{"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"Spectators (\\",\\"color\\":\\"aqua\\"},{\\"score\\":{\\"name\\":\\"num_spectators\\",\\"objective\\":\\"uhc.internal\\"}},{\\"text\\":\\")\\"},{\\"text\\":\\": \\",\\"color\\":\\"gray\\"},{\\"selector\\":\\"@a[tag=spectator]\\",\\"color\\":\\"white\\"}]"},"text":"# of Spectators:"}'}
data merge block -11 12 1 {Text2:'{"color":"#401010","score":{"name":"num_players","objective":"uhc.internal"}}'}
data merge block -11 12 1 {Text4:'{"color":"#401010","score":{"name":"num_spectators","objective":"uhc.internal"}}'}
# wb size cfg
data merge block -11 12 -1 {Text2:'[{"color":"#401010","text":"±"},{"color":"#401010","score":{"name":"sizer_init_bor","objective":"uhc.internal"}}]',Text4:'[{"color":"#401010","text":"±"},{"color":"#401010","score":{"name":"sizer_bor_1","objective":"uhc.internal"}}]'}
data merge block -11 12 -2 {Text3:'[{"color":"#401010","text":"±"},{"color":"#401010","score":{"name":"sizer_bor_2","objective":"uhc.internal"}}]'}
# interval cfg
data merge block -11 11 1 {Text2:'[{"score":{"name":"stillborder","objective":"uhc.cfg"},"color":"#401010"},{"text":" min.","color":"black"}]'}
data merge block -11 11 1 {Text4:'[{"score":{"name":"border1","objective":"uhc.cfg"},"color":"#401010"},{"text":" min,","color":"black"}]'}
data merge block -11 11 0 {Text2:'[{"score":{"name":"borderstop","objective":"uhc.cfg"},"color":"#401010"},{"text":" min.","color":"black"}]'}
data merge block -11 11 0 {Text4:'[{"score":{"name":"border2","objective":"uhc.cfg"},"color":"#401010"},{"text":" min.","color":"black"}]'}
data merge block -11 11 -1 {Text3:'[{"score":{"name":"tilldm","objective":"uhc.cfg"},"color":"#401010"},{"text":" min.","color":"black"}]'}

## esoteric cfg
#bit flippers
execute if score gone_fishing uhc.esoteric matches 0 run setblock -12 12 8 red_concrete
execute if score boss uhc.esoteric matches 0 run setblock -12 12 7 red_concrete
execute if score always_elytra uhc.esoteric matches 0 run setblock -12 12 6 red_concrete
execute if score sardines uhc.esoteric matches 0 run setblock -12 12 5 red_concrete
execute if score dn_speed uhc.esoteric matches 0 run setblock -12 11 8 red_concrete
execute if score covert_teams uhc.esoteric matches 0 run setblock -12 11 7 red_concrete
execute if score wither_bonus uhc.esoteric matches 0 run setblock -12 11 6 red_concrete
execute if score nether_spawn uhc.esoteric matches 0 run setblock -12 11 5 red_concrete
execute if score always_day uhc.esoteric matches 0 run setblock -12 11 4 red_concrete
execute if score always_night uhc.esoteric matches 0 run setblock -12 10 8 red_concrete
execute if score combat_type uhc.esoteric matches 0 run setblock -12 10 6 red_concrete
execute if score bomberman uhc.esoteric matches 0 run setblock -12 10 5 red_concrete

execute if score gone_fishing uhc.esoteric matches 1 run setblock -12 12 8 lime_concrete
execute if score boss uhc.esoteric matches 1 run setblock -12 12 7 lime_concrete
execute if score always_elytra uhc.esoteric matches 1 run setblock -12 12 6 lime_concrete
execute if score sardines uhc.esoteric matches 1 run setblock -12 12 5 lime_concrete
execute if score dn_speed uhc.esoteric matches 1 run setblock -12 11 8 lime_concrete
execute if score covert_teams uhc.esoteric matches 1 run setblock -12 11 7 lime_concrete
execute if score wither_bonus uhc.esoteric matches 1 run setblock -12 11 6 lime_concrete
execute if score nether_spawn uhc.esoteric matches 1 run setblock -12 11 5 lime_concrete
execute if score always_day uhc.esoteric matches 1 run setblock -12 11 4 lime_concrete
execute if score always_night uhc.esoteric matches 1 run setblock -12 10 8 lime_concrete
execute if score combat_type uhc.esoteric matches 1 run setblock -12 10 6 lime_concrete
execute if score bomberman uhc.esoteric matches 1 run setblock -12 10 5 lime_concrete