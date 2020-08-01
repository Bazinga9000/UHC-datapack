team join nocollision @s
effect give @s minecraft:resistance 999999 5 true
scoreboard players operation @s pcheckpoint > 1 constants
replaceitem entity @s[tag=!in_parkour] hotbar.6 carrot_on_a_stick{display:{Name:'{"text":"To Beginning","color":"gold","italic":false}'}, CustomModelData: 3}
replaceitem entity @s[tag=!in_parkour] hotbar.7 carrot_on_a_stick{display:{Name:'{"text":"To Last Checkpoint","color":"gold","italic":false}'}, CustomModelData: 1}
replaceitem entity @s[tag=!in_parkour] hotbar.8 carrot_on_a_stick{display:{Name:'{"text":"Reset Checkpoints","color":"gold","italic":false}'}, CustomModelData: 2}
tag @s add in_parkour

scoreboard players set @s cstick 0