team leave @s[team=nocollision]
effect clear @s minecraft:resistance
tag @s remove in_parkour

scoreboard players set @s cstick 0
clear @s carrot_on_a_stick
# reset triggers
execute as @s run trigger level set 0
execute as @s run trigger last set 0
execute as @s run trigger reset set 0