team join nocollision @s
effect give @s minecraft:resistance 999999 5 true
scoreboard players operation @s pcheckpoint > 1 constants
tag @s add in_parkour

scoreboard players set @s cstick 0
replaceitem entity @s hotbar.0 carrot_on_a_stick{display:{Name:'{"text":"To Last Checkpoint","color":"gold"}'}, CustomModelData: 1}
replaceitem entity @s hotbar.8 carrot_on_a_stick{display:{Name:'{"text":"Reset Checkpoints","color":"gold"}'}, CustomModelData: 2}