#> location teleports
execute as @a[scores={uhc.guide=1}] run tp @s 0 6 0
execute as @a[scores={uhc.guide=2}] run tp @s 0 10 0
execute as @a[scores={uhc.guide=3}] run tp @s 0 19 0
execute as @a[scores={uhc.guide=4}] run tp @s 0 14 0
execute as @a[scores={uhc.guide=5}] run tp @s 1 32 0
execute as @a[scores={uhc.guide=6}] run tp @s 0 0 0
execute as @a[scores={uhc.guide=7}] run tp @s 0 0 0
execute as @a[scores={uhc.guide=8}] run tp @s 0 0 0
execute as @a[scores={uhc.guide=9}] run tp @s 0 0 0
execute as @a[scores={uhc.guide=1..},tag=in_parkour] run function uhc:parkour/exit

#> set spectator/player
tellraw @a[scores={uhc.guide=10},tag=spectator,gamemode=!spectator] ["",{"text":"You have become a player!","color":"yellow"}]
tellraw @a[scores={uhc.guide=11},tag=!spectator,gamemode=!spectator] ["",{"text":"You have become a spectator!","color":"aqua"}]
tag @a[scores={uhc.guide=10},tag=spectator,gamemode=!spectator] remove spectator 
tag @a[scores={uhc.guide=11},tag=!spectator,gamemode=!spectator] add spectator

#> reset everything
scoreboard players set @a uhc.guide 0
scoreboard players enable @a uhc.guide
