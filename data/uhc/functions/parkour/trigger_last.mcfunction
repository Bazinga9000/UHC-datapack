tag @s add last
execute as @e[type=armor_stand,scores={acheckpoint=1..}] if score @s acheckpoint matches @a[limit=1,tag=last] pcheckpoint run tp @a[limit=1,tag=last] @s
tag @s remove last
scoreboard players reset @s last

execute if entity @a[tag=in_parkour,scores={last=1..}] as @r[tag=in_parkour,scores={last=1..}] run function uhc:parkour/trigger_last.mcfunction