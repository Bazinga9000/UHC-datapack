execute unless score border1 uhc.cfg matches 0 tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border will begin shrinking in five minutes!","bold":true,"italic":true,"color":"yellow"}]
execute if score border1 uhc.cfg matches 0 tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"The World Border will immediately shrink to a diameter of 25 in five minutes! Watch out!","bold":true,"italic":true,"color":"yellow"}]

execute if score border1 uhc.cfg matches 0 if score border2 uhc.cfg matches 0 if score border2 uhc.cfg matches 0 if score dmwarn uhc.cfg matches 0 run tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"If the game does not end when the border shrinks, I shall end it myself.","bold":true,"italic":true,"color":"yellow"}]