# runfn uhc:cfg/season with season uhc.cfg as <season>
scoreboard players operation season_d1 uhc.internal = season uhc.cfg
scoreboard players operation season_d1 uhc.internal /= 10 constants
scoreboard players operation season_d0 uhc.internal = season uhc.cfg
scoreboard players operation season_d0 uhc.internal %= 10 constants

execute if score season_d1 uhc.internal matches 0 run clone 31 4 91 27 10 91 7 13 68
execute if score season_d1 uhc.internal matches 1 run clone 31 4 93 27 10 93 7 13 68
execute if score season_d1 uhc.internal matches 2 run clone 31 4 95 27 10 95 7 13 68
execute if score season_d1 uhc.internal matches 3 run clone 31 4 97 27 10 97 7 13 68
execute if score season_d1 uhc.internal matches 4 run clone 31 4 99 27 10 99 7 13 68
execute if score season_d1 uhc.internal matches 5 run clone 31 4 101 27 10 101 7 13 68
execute if score season_d1 uhc.internal matches 6 run clone 31 4 103 27 10 103 7 13 68
execute if score season_d1 uhc.internal matches 7 run clone 31 4 105 27 10 105 7 13 68
execute if score season_d1 uhc.internal matches 8 run clone 31 4 107 27 10 107 7 13 68
execute if score season_d1 uhc.internal matches 9 run clone 31 4 109 27 10 109 7 13 68

execute if score season_d0 uhc.internal matches 0 run clone 31 4 91 27 10 91 -11 13 68
execute if score season_d0 uhc.internal matches 1 run clone 31 4 93 27 10 93 -11 13 68
execute if score season_d0 uhc.internal matches 2 run clone 31 4 95 27 10 95 -11 13 68
execute if score season_d0 uhc.internal matches 3 run clone 31 4 97 27 10 97 -11 13 68
execute if score season_d0 uhc.internal matches 4 run clone 31 4 99 27 10 99 -11 13 68
execute if score season_d0 uhc.internal matches 5 run clone 31 4 101 27 10 101 -11 13 68
execute if score season_d0 uhc.internal matches 6 run clone 31 4 103 27 10 103 -11 13 68
execute if score season_d0 uhc.internal matches 7 run clone 31 4 105 27 10 105 -11 13 68
execute if score season_d0 uhc.internal matches 8 run clone 31 4 107 27 10 107 -11 13 68
execute if score season_d0 uhc.internal matches 9 run clone 31 4 109 27 10 109 -11 13 68