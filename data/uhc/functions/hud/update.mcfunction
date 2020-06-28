# should be ran with: execute as @a run function uhc:hud/update
# only works for 4 digits or less

#> get wb radius + number of digits of wb radius
execute store result score wb uhc.hud run worldborder get
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

scoreboard players operation xyzlen uhc.hud += xlen uhc.hud
scoreboard players operation xyzlen uhc.hud += ylen uhc.hud
scoreboard players operation xyzlen uhc.hud += zlen uhc.hud

# check how many bars are on the left
scoreboard players set leftlen uhc.hud 0
execute store result score tmp uhc.hud run data get entity @s AbsorptionAmount
execute unless score tmp uhc.hud matches 0 run scoreboard players add leftlen uhc.hud 1
execute store result score tmp uhc.hud run attribute @s minecraft:generic.armor get
execute unless score tmp uhc.hud matches 0 run scoreboard players add leftlen uhc.hud 1
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
scoreboard players set rightlen uhc.hud 1
execute if data entity @s RootVehicle positioned ~ ~-.5 ~ store result score tmp uhc.hud run attribute @e[limit=1,sort=nearest,type=!player] minecraft:generic.max_health get
execute unless score tmp uhc.hud matches ..20 run scoreboard players add rightlen uhc.hud 1

#> store text
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 3 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf826\\uf828\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 4 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf820\\uf828\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 5 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf805\\uf828\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 6 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf825\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 7 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 8 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf807\\uf828\\uf828\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 9 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf823\\uf828\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 10 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf828\\uf803\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 11 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf827\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 12 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf822\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 13 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf82a\\uf823"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 14 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf82a\\uf803"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 15 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf828\\uf825"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 16 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf828\\uf820"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 17 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf828\\uf805"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 18 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf824"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 19 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 20 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf806"}]'
execute if score leftlen uhc.hud matches 0 if score xyzlen uhc.hud matches 21 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud0"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf828\\uf822"}]'

execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 3 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf826\\uf828\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 4 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf820\\uf828\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 5 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf805\\uf828\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 6 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf825\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 7 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 8 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf807\\uf828\\uf828\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 9 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf823\\uf828\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 10 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf828\\uf803\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 11 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf827\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 12 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf822\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 13 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf82a\\uf823"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 14 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf82a\\uf803"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 15 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf828\\uf825"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 16 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf828\\uf820"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 17 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf828\\uf805"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 18 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf824"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 19 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 20 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf806"}]'
execute if score leftlen uhc.hud matches 1 if score xyzlen uhc.hud matches 21 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf828\\uf822"}]'

execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 3 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf826\\uf828\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 4 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf820\\uf828\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 5 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf805\\uf828\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 6 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf825\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 7 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 8 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf807\\uf828\\uf828\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 9 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf823\\uf828\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 10 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf828\\uf803\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 11 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf827\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 12 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf822\\uf82a\\uf825"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 13 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf82a\\uf823"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 14 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf82a\\uf803"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 15 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf828\\uf825"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 16 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf828\\uf820"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 17 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf828\\uf805"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 18 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf824"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 19 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 20 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf829\\uf806"}]'
execute if score leftlen uhc.hud matches 2 if score xyzlen uhc.hud matches 21 run data modify storage minecraft:uhc.hud xyz set value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud2"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"text":"\\uf828\\uf822"}]'
# X displays red
# Z displays blue
execute if score rightlen uhc.hud matches 0 if score ry uhc.hud matches 0 run data modify storage minecraft:uhc.hud ry set value '[{"text":"+X ","font":"uhc:hud0","color":"red"},{"text":"+Z","color":"blue"}]'
execute if score rightlen uhc.hud matches 0 if score ry uhc.hud matches 1 run data modify storage minecraft:uhc.hud ry set value '[{"text":"\\uf824\\uf824\\uf822","font":"uhc:hud0"},{"text":"+X","color":"red"}]'
execute if score rightlen uhc.hud matches 0 if score ry uhc.hud matches 2 run data modify storage minecraft:uhc.hud ry set value '[{"text":"+X ","font":"uhc:hud0","color":"red"},{"text":"-Z","color":"blue"}]'
execute if score rightlen uhc.hud matches 0 if score ry uhc.hud matches 3 run data modify storage minecraft:uhc.hud ry set value '[{"text":"\\uf824\\uf824\\uf822","font":"uhc:hud0"},{"text":"-Z","color":"blue"}]'
execute if score rightlen uhc.hud matches 0 if score ry uhc.hud matches 4 run data modify storage minecraft:uhc.hud ry set value '[{"text":"-X ","font":"uhc:hud0","color":"red"},{"text":"-Z","color":"blue"}]'
execute if score rightlen uhc.hud matches 0 if score ry uhc.hud matches 5 run data modify storage minecraft:uhc.hud ry set value '[{"text":"\\uf824\\uf824\\uf822","font":"uhc:hud0"},{"text":"-X","color":"red"}]'
execute if score rightlen uhc.hud matches 0 if score ry uhc.hud matches 6 run data modify storage minecraft:uhc.hud ry set value '[{"text":"-X ","font":"uhc:hud0","color":"red"},{"text":"+Z","color":"blue"}]'
execute if score rightlen uhc.hud matches 0 if score ry uhc.hud matches 7 run data modify storage minecraft:uhc.hud ry set value '[{"text":"\\uf824\\uf824\\uf822","font":"uhc:hud0"},{"text":"+Z","color":"blue"}]'

execute if score rightlen uhc.hud matches 1 if score ry uhc.hud matches 0 run data modify storage minecraft:uhc.hud ry set value '[{"text":"+X ","font":"uhc:hud1","color":"red"},{"text":"+Z","color":"blue"}]'
execute if score rightlen uhc.hud matches 1 if score ry uhc.hud matches 1 run data modify storage minecraft:uhc.hud ry set value '[{"text":"\\uf824\\uf824\\uf822","font":"uhc:hud1"},{"text":"+X","color":"red"}]'
execute if score rightlen uhc.hud matches 1 if score ry uhc.hud matches 2 run data modify storage minecraft:uhc.hud ry set value '[{"text":"+X ","font":"uhc:hud1","color":"red"},{"text":"-Z","color":"blue"}]'
execute if score rightlen uhc.hud matches 1 if score ry uhc.hud matches 3 run data modify storage minecraft:uhc.hud ry set value '[{"text":"\\uf824\\uf824\\uf822","font":"uhc:hud1"},{"text":"-Z","color":"blue"}]'
execute if score rightlen uhc.hud matches 1 if score ry uhc.hud matches 4 run data modify storage minecraft:uhc.hud ry set value '[{"text":"-X ","font":"uhc:hud1","color":"red"},{"text":"-Z","color":"blue"}]'
execute if score rightlen uhc.hud matches 1 if score ry uhc.hud matches 5 run data modify storage minecraft:uhc.hud ry set value '[{"text":"\\uf824\\uf824\\uf822","font":"uhc:hud1"},{"text":"-X","color":"red"}]'
execute if score rightlen uhc.hud matches 1 if score ry uhc.hud matches 6 run data modify storage minecraft:uhc.hud ry set value '[{"text":"-X ","font":"uhc:hud1","color":"red"},{"text":"+Z","color":"blue"}]'
execute if score rightlen uhc.hud matches 1 if score ry uhc.hud matches 7 run data modify storage minecraft:uhc.hud ry set value '[{"text":"\\uf824\\uf824\\uf822","font":"uhc:hud1"},{"text":"+Z","color":"blue"}]'

# -1 = does not display
#  0 = displays blue
#  1 = displays red
execute if score wblen uhc.hud matches 1 if score wbred uhc.hud matches 0 run data modify storage uhc.hud wb set value '[{"text":"\\uf822\\ue000","color":"#338dff","font":"uhc:hud_wb"},{"text":"\\uf822±","color":"white"},{"score":{"name":"wb","objective":"uhc.hud"},"color":"white"},{"text":"\\uf809\\uf807\\uf801"}]'
execute if score wblen uhc.hud matches 2 if score wbred uhc.hud matches 0 run data modify storage uhc.hud wb set value '[{"text":"\\uf822\\ue000","color":"#338dff","font":"uhc:hud_wb"},{"text":"\\uf822±","color":"white"},{"score":{"name":"wb","objective":"uhc.hud"},"color":"white"},{"text":"\\uf809\\uf807\\uf806\\uf802"}]'
execute if score wblen uhc.hud matches 3 if score wbred uhc.hud matches 0 run data modify storage uhc.hud wb set value '[{"text":"\\uf822\\ue000","color":"#338dff","font":"uhc:hud_wb"},{"text":"\\uf822±","color":"white"},{"score":{"name":"wb","objective":"uhc.hud"},"color":"white"},{"text":"\\uf809\\uf808\\uf803\\uf802\\uf802"}]'
execute if score wblen uhc.hud matches 4 if score wbred uhc.hud matches 0 run data modify storage uhc.hud wb set value '[{"text":"\\uf822\\ue000","color":"#338dff","font":"uhc:hud_wb"},{"text":"\\uf822±","color":"white"},{"score":{"name":"wb","objective":"uhc.hud"},"color":"white"},{"text":"\\uf809\\uf808\\uf807\\uf800\\uf802\\uf802\\uf802\\uf802"}]'
execute if score wblen uhc.hud matches 1 if score wbred uhc.hud matches 1 run data modify storage uhc.hud wb set value '[{"text":"\\uf822\\ue000","color":"red","font":"uhc:hud_wb"},{"text":"\\uf822±","color":"white"},{"score":{"name":"wb","objective":"uhc.hud"},"color":"white"},{"text":"\\uf809\\uf807\\uf801"}]'
execute if score wblen uhc.hud matches 2 if score wbred uhc.hud matches 1 run data modify storage uhc.hud wb set value '[{"text":"\\uf822\\ue000","color":"red","font":"uhc:hud_wb"},{"text":"\\uf822±","color":"white"},{"score":{"name":"wb","objective":"uhc.hud"},"color":"white"},{"text":"\\uf809\\uf807\\uf806\\uf802"}]'
execute if score wblen uhc.hud matches 3 if score wbred uhc.hud matches 1 run data modify storage uhc.hud wb set value '[{"text":"\\uf822\\ue000","color":"red","font":"uhc:hud_wb"},{"text":"\\uf822±","color":"white"},{"score":{"name":"wb","objective":"uhc.hud"},"color":"white"},{"text":"\\uf809\\uf808\\uf803\\uf802\\uf802"}]'
execute if score wblen uhc.hud matches 4 if score wbred uhc.hud matches 1 run data modify storage uhc.hud wb set value '[{"text":"\\uf822\\ue000","color":"red","font":"uhc:hud_wb"},{"text":"\\uf822±","color":"white"},{"score":{"name":"wb","objective":"uhc.hud"},"color":"white"},{"text":"\\uf809\\uf808\\uf807\\uf800\\uf802\\uf802\\uf802\\uf802"}]'

#> disp text
title @s actionbar [{"nbt":"xyz","storage":"uhc.hud","interpret":"true"},{"nbt":"ry","storage":"uhc.hud","interpret":"true"},{"nbt":"wb","storage":"uhc.hud","interpret":"true"}]