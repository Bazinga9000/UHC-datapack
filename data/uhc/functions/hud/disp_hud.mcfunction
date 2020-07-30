# coord disp
let i = xyzlen uhc.hud run let j = leftlen uhc.hud run data modify storage minecraft:uhc.hud displist append value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud$j"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"nbt":"xyzspacingsca[$i]","storage":"uhc.hud","interpret":true}]'

# dir disp
let j = rightlen uhc.hud run execute if score ry uhc.hud matches 0 run data modify storage minecraft:uhc.hud displist append value '[{"text":"-X ","font":"uhc:hud$j","color":"red"},{"text":"+Z","color":"#6f6fff"}]'
let j = rightlen uhc.hud run execute if score ry uhc.hud matches 1 run data modify storage minecraft:uhc.hud displist append value '[{"text":"\\uf824\\uf824\\uf822","font":"uhc:hud$j"},{"text":"-X","color":"red"}]'
let j = rightlen uhc.hud run execute if score ry uhc.hud matches 2 run data modify storage minecraft:uhc.hud displist append value '[{"text":"-X ","font":"uhc:hud$j","color":"red"},{"text":"-Z","color":"#6f6fff"}]'
let j = rightlen uhc.hud run execute if score ry uhc.hud matches 3 run data modify storage minecraft:uhc.hud displist append value '[{"text":"\\uf824\\uf824\\uf822","font":"uhc:hud$j"},{"text":"-Z","color":"#6f6fff"}]'
let j = rightlen uhc.hud run execute if score ry uhc.hud matches 4 run data modify storage minecraft:uhc.hud displist append value '[{"text":"+X ","font":"uhc:hud$j","color":"red"},{"text":"-Z","color":"#6f6fff"}]'
let j = rightlen uhc.hud run execute if score ry uhc.hud matches 5 run data modify storage minecraft:uhc.hud displist append value '[{"text":"\\uf824\\uf824\\uf822","font":"uhc:hud$j"},{"text":"+X","color":"red"}]'
let j = rightlen uhc.hud run execute if score ry uhc.hud matches 6 run data modify storage minecraft:uhc.hud displist append value '[{"text":"+X ","font":"uhc:hud$j","color":"red"},{"text":"+Z","color":"#6f6fff"}]'
let j = rightlen uhc.hud run execute if score ry uhc.hud matches 7 run data modify storage minecraft:uhc.hud displist append value '[{"text":"\\uf824\\uf824\\uf822","font":"uhc:hud$j"},{"text":"+Z","color":"#6f6fff"}]'

#worldborder disp
# -1 = does not display
#  0 = displays blue
#  1 = displays red
let i = wblen uhc.hud run execute if score wbclr uhc.hud matches 0 run data modify storage uhc.hud displist append value '[{"text":"\\uf822\\ue000","color":"#338dff"},{"text":"\\uf822±","color":"white"},{"score":{"name":"wb","objective":"uhc.hud"},"color":"white"},{"nbt":"wbspacingsca[$i]","storage":"uhc.hud","interpret":true}]'
let i = wblen uhc.hud run execute if score wbclr uhc.hud matches 1 run data modify storage uhc.hud displist append value '[{"text":"\\uf822\\ue000","color":"red"},{"text":"\\uf822±","color":"white"},{"score":{"name":"wb","objective":"uhc.hud"},"color":"white"},{"nbt":"wbspacingsca[$i]","storage":"uhc.hud","interpret":true}]'

title @s actionbar [{"nbt":"displist[0]","storage":"uhc.hud","interpret":true},{"nbt":"displist[1]","storage":"uhc.hud","interpret":true},{"nbt":"displist[2]","storage":"uhc.hud","interpret":true,"font":"uhc:hud_wb"}]