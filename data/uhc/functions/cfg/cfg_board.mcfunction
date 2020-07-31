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