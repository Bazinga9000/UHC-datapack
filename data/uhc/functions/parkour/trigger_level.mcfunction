# invalidate warp
execute unless score @s level matches 1..37 run scoreboard players reset @s level
execute if score @s level > @s pcheckpoint run scoreboard players reset @s level

tag @s add level
execute as @e[type=armor_stand,scores={acheckpoint=1..}] if score @s acheckpoint = @a[limit=1,tag=level] level run tp @a[limit=1,tag=level] @s
tag @s remove level
scoreboard players reset @s level

execute if entity @a[tag=in_parkour,scores={level=1..}] as @r[tag=in_parkour,scores={level=1..}] run function uhc:parkour/trigger_level