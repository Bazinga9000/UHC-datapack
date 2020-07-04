# should be ran with: execute as @a run function uhc:hud/update
# only works for 4 digits or less

#> get wb radius + number of digits of wb radius
execute in minecraft:game store result score wb uhc.hud run worldborder get
scoreboard players operation wb uhc.hud /= 2 constants
scoreboard players operation log uhc.hud = wb uhc.hud
function uhc:hud/num_len
scoreboard players operation wblen uhc.hud = log uhc.hud

#> get xyz coords + the total length their digits and signs take up (xyzlen)
execute store result score x uhc.hud run data get entity @s Pos[0]
execute store result score y uhc.hud run data get entity @s Pos[1]
execute store result score z uhc.hud run data get entity @s Pos[2]

scoreboard players operation log uhc.hud = x uhc.hud
function uhc:hud/num_len
scoreboard players operation xlen uhc.hud = log uhc.hud
scoreboard players operation log uhc.hud = y uhc.hud
function uhc:hud/num_len
scoreboard players operation ylen uhc.hud = log uhc.hud
scoreboard players operation log uhc.hud = z uhc.hud
function uhc:hud/num_len
scoreboard players operation zlen uhc.hud = log uhc.hud

scoreboard players set xyzlen uhc.hud 0
scoreboard players operation xyzlen uhc.hud += xlen uhc.hud
scoreboard players operation xyzlen uhc.hud += ylen uhc.hud
scoreboard players operation xyzlen uhc.hud += zlen uhc.hud

# check how many bars are on the left
# in surv/adv: there are the hearts which the hud should be placed above (uhc:hud0)
# if they're wearing armor, the hearts should be placed one row higher (uhc:hud1)
# if they have absorp, then the hud should also be placed one row higher (uhc:hud2)
# in creative, it doesn't matter because none of that shows (uhc:hud-1)
scoreboard players set leftlen uhc.hud 0
execute store result score tmp uhc.hud run data get entity @s AbsorptionAmount
execute unless score tmp uhc.hud matches 0 run scoreboard players add leftlen uhc.hud 1
execute store result score tmp uhc.hud run attribute @s minecraft:generic.armor get
execute unless score tmp uhc.hud matches 0 run scoreboard players add leftlen uhc.hud 1
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

# check how many bars are on the right
# in surv/adv: there is the hunger bar which the hud should be placed above (uhc:hud0)
# if they're on a horse, then the hunger bar is gone, but you now need to check if the horse's health is 1 or 2 rows (uhc:hud1, uhc:hud2)
# in creative, the hunger bar is always gone (uhc:hud-1), but a horse's health is not gone.
scoreboard players set rightlen uhc.hud 1
execute if entity @s[gamemode=creative] run scoreboard players set rightlen uhc.hud -1
scoreboard players set tmp uhc.hud -1
execute if data entity @s RootVehicle at @s positioned ~ ~-.5 ~ store result score tmp uhc.hud run attribute @e[limit=1,sort=nearest,type=!player] minecraft:generic.max_health get
execute if score tmp uhc.hud matches 0..20 run scoreboard players set rightlen uhc.hud 1
execute if score tmp uhc.hud matches 21.. run scoreboard players set rightlen uhc.hud 2

#> store text
data modify storage uhc.hud displist set value []
execute unless entity @s[gamemode=spectator] run function uhc:hud/disp_hud
execute if entity @s[gamemode=spectator] run function uhc:hud/disp_hud_spec