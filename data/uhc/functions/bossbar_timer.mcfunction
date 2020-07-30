scoreboard players operation progresss uhc.bossbar = progress uhc.bossbar
scoreboard players operation progresss uhc.bossbar /= 20 constants

scoreboard players operation progressm uhc.bossbar = progresss uhc.bossbar
scoreboard players operation progressm uhc.bossbar /= 60 constants
scoreboard players operation progresss uhc.bossbar %= 60 constants

scoreboard players operation progressh uhc.bossbar = progressm uhc.bossbar
scoreboard players operation progressh uhc.bossbar /= 60 constants
scoreboard players operation progressm uhc.bossbar %= 60 constants

execute store result score mlen uhc.bossbar run runfn uhc:num_len with log uhc.internal as progressm uhc.bossbar
execute store result score slen uhc.bossbar run runfn uhc:num_len with log uhc.internal as progresss uhc.bossbar

data modify storage uhc bossbar_timer append value '[{"text":" ","font":"default"},{"text":"\\ue000","font":"uhc:hud_icon"},{"text":" ","font":"default"}]'
execute if score progressh uhc.bossbar matches 1..9 run data modify storage uhc bossbar_timer append value '[{"text":"0"},{"score":{"name":"progressh","objective":"uhc.bossbar"}},{"text":":"}]'

execute if score mlen uhc.bossbar matches 1 run data modify storage uhc bossbar_timer append value '[{"text":"0"},{"score":{"name":"progressm","objective":"uhc.bossbar"}},{"text":":"}]'
execute if score mlen uhc.bossbar matches 2 run data modify storage uhc bossbar_timer append value '[{"score":{"name":"progressm","objective":"uhc.bossbar"}},{"text":":"}]'

execute if score slen uhc.bossbar matches 1 run data modify storage uhc bossbar_timer append value '[{"text":"0"},{"score":{"name":"progresss","objective":"uhc.bossbar"}}]'
execute if score slen uhc.bossbar matches 2 run data modify storage uhc bossbar_timer append value '[{"score":{"name":"progresss","objective":"uhc.bossbar"}}]'