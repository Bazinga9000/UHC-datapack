execute store result score @s cstick run data get entity @s SelectedItemSlot
execute if score @s cstick matches 0 run trigger last
execute if score @s cstick matches 8 run trigger reset

scoreboard players set @s cstick 0