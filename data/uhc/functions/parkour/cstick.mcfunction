execute store result score @s cstick run data get entity @s SelectedItem.tag.CustomModelData
execute if score @s cstick matches 1 run trigger last
execute if score @s cstick matches 2 run tellraw @s [{"text":"Are you sure you want to reset your checkpoint? Press ","color":"red"},{"text":"[here] ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger reset"}},{"text":"to confirm."}]

scoreboard players set @s cstick 0