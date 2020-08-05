#> resets inv, effects, and such before being moved to another world
# would mv-inventories do this better? no idea
effect clear @s
clear @s
xp set @s 0 points
advancement revoke @s everything

attribute @s generic.max_health base set 20
attribute @s generic.attack_speed base set 4
attribute @s generic.movement_speed modifier remove 74141e10-119e-4dc2-8dbf-1cb3ec7ba672

function uhc:parkour/exit