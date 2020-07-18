#add spacing
data modify storage uhc.hud displist append value '{"text":"\\uf82b\\uf829\\uf828\\uf822","font":"uhc:hud0"}'
#coord disp
let i = xyzlen uhc.hud run data modify storage minecraft:uhc.hud displist append value '[{"score":{"name":"x","objective":"uhc.hud"},"font":"uhc:hud1"},{"text":" "},{"score":{"name":"y","objective":"uhc.hud"}},{"text":" "},{"score":{"name":"z","objective":"uhc.hud"}},{"nbt":"xyzspacingsp[$i]","storage":"uhc.hud","interpret":"true"}]'

#dir disp
execute if score ry uhc.hud matches 0 run data modify storage minecraft:uhc.hud displist append value '[{"text":"-X ","font":"uhc:hud0","color":"red"},{"text":"+Z\\uf809\\uf821","color":"#6f6fff"}]'
execute if score ry uhc.hud matches 1 run data modify storage minecraft:uhc.hud displist append value '{"text":"-X\\uf807\\uf806","color":"red","font":"uhc:hud0"}'
execute if score ry uhc.hud matches 2 run data modify storage minecraft:uhc.hud displist append value '[{"text":"-X ","font":"uhc:hud0","color":"red"},{"text":"-Z\\uf809\\uf821","color":"#6f6fff"}]'
execute if score ry uhc.hud matches 3 run data modify storage minecraft:uhc.hud displist append value '{"text":"-Z\\uf807\\uf806","color":"#6f6fff","font":"uhc:hud0"}'
execute if score ry uhc.hud matches 4 run data modify storage minecraft:uhc.hud displist append value '[{"text":"+X ","font":"uhc:hud0","color":"red"},{"text":"-Z\\uf809\\uf821","color":"#6f6fff"}]'
execute if score ry uhc.hud matches 5 run data modify storage minecraft:uhc.hud displist append value '{"text":"+X\\uf807\\uf806","color":"red","font":"uhc:hud0"}'
execute if score ry uhc.hud matches 6 run data modify storage minecraft:uhc.hud displist append value '[{"text":"+X ","font":"uhc:hud0","color":"red"},{"text":"+Z\\uf809\\uf821","color":"#6f6fff"}]'
execute if score ry uhc.hud matches 7 run data modify storage minecraft:uhc.hud displist append value '{"text":"+Z\\uf807\\uf806","color":"#6f6fff","font":"uhc:hud0"}'

#worldborder disp
# -1 = does not display
#  0 = displays blue
#  1 = displays red
let i = wblen uhc.hud run execute if score wbclr uhc.hud matches 0 run data modify storage uhc.hud displist append value '[{"text":"\\ue000","color":"#338dff"},{"text":"\\uf822±","color":"white"},{"score":{"name":"wb","objective":"uhc.hud"},"color":"white"},{"nbt":"wbspacingsp[$i]","storage":"uhc.hud","interpret":"true"}]'
let i = wblen uhc.hud run execute if score wbclr uhc.hud matches 1 run data modify storage uhc.hud displist append value '[{"text":"\\ue000","color":"red"},{"text":"\\uf822±","color":"white"},{"score":{"name":"wb","objective":"uhc.hud"},"color":"white"},{"nbt":"wbspacingsp[$i]","storage":"uhc.hud","interpret":"true"}]'

title @s actionbar [{"nbt":"displist[0]","storage":"uhc.hud","interpret":"true","font":"uhc:hud_wb"},{"nbt":"displist[1]","storage":"uhc.hud","interpret":"true"},{"nbt":"displist[2]","storage":"uhc.hud","interpret":"true"},{"nbt":"displist[3]","storage":"uhc.hud","interpret":"true","font":"uhc:hud_wb"}]