# should be ran with: execute as @a run function uhc:hud/update
# only works for 4 digits or less

#> get wb radius + number of digits of wb radius
execute in minecraft:game store result score wb uhc.hud run worldborder get
scoreboard players operation wb uhc.hud /= 2 constants
execute store result score wblen uhc.hud run runfn uhc:num_len with log uhc.internal as wb uhc.hud

#> get xyz coords + the total length their digits and signs take up (xyzlen)
execute store result score x uhc.hud run data get entity @s Pos[0]
execute store result score y uhc.hud run data get entity @s Pos[1]
execute store result score z uhc.hud run data get entity @s Pos[2]

execute store result score xlen uhc.hud run runfn uhc:num_len with log uhc.internal as x uhc.hud
execute store result score ylen uhc.hud run runfn uhc:num_len with log uhc.internal as y uhc.hud
execute store result score zlen uhc.hud run runfn uhc:num_len with log uhc.internal as z uhc.hud

scoreboard players set xyzlen uhc.hud 0
scoreboard players operation xyzlen uhc.hud += xlen uhc.hud
scoreboard players operation xyzlen uhc.hud += ylen uhc.hud
scoreboard players operation xyzlen uhc.hud += zlen uhc.hud

## check how many bars are on the left
# place above first heart bar
scoreboard players set leftlen uhc.hud 0
# add one bar if there is absorption
execute store result score tmp uhc.hud run data get entity @s AbsorptionAmount
execute unless score tmp uhc.hud matches 0 run scoreboard players add leftlen uhc.hud 1
# add one bar if there's armor
execute store result score tmp uhc.hud run attribute @s minecraft:generic.armor get
execute unless score tmp uhc.hud matches 0 run scoreboard players add leftlen uhc.hud 1
# no bars in creative
execute if entity @s[gamemode=creative] run scoreboard players set leftlen uhc.hud -1

#> get ry scaled to 0-7
# 0 = +X +Z
# 1 = +X
# 2 = +X -Z
# 3 = -Z
# 4 = -X -Z
# 5 = -X
# 6 = -X +Z
# 7 = +Z
execute store result score ry uhc.hud run data get entity @s Rotation[0] 10
scoreboard players remove ry uhc.hud 225
scoreboard players operation ry uhc.hud %= 3600 constants
scoreboard players operation ry uhc.hud /= 450 constants

## check how many bars are on the right
# place above hunger bar
scoreboard players set rightlen uhc.hud 0
# check if in water ( breaks with water breathing :( )
execute store result score tmp uhc.hud run data get entity @s Air
execute if score tmp uhc.hud matches ..299 run scoreboard players add rightlen uhc.hud 1
# creative mode = hunger and water are gone
execute if entity @s[gamemode=creative] run scoreboard players set rightlen uhc.hud -1
# check vehicle max health
scoreboard players set tmp uhc.hud -1
execute if data entity @s RootVehicle at @s positioned ~ ~-.5 ~ store result score tmp uhc.hud run attribute @e[limit=1,sort=nearest,type=!player] minecraft:generic.max_health get
execute if score tmp uhc.hud matches 0..20 run scoreboard players set rightlen uhc.hud 0
execute if score tmp uhc.hud matches 21.. run scoreboard players set rightlen uhc.hud 1

#> store text
data modify storage uhc.hud displist set value []
execute unless entity @s[gamemode=spectator] run function uhc:hud/disp_hud
execute if entity @s[gamemode=spectator] run function uhc:hud/disp_hud_spec