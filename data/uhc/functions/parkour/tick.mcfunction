execute if entity @a[tag=in_parkour,scores={level=1..}] as @r[tag=in_parkour,scores={level=1..}] run function uhc:parkour/trigger_level
execute if entity @a[tag=in_parkour,scores={last=1..}] as @r[tag=in_parkour,scores={last=1..}] run function uhc:parkour/trigger_last
execute as @a[tag=in_parkour,scores={reset=1..}] if entity @s run function uhc:parkour/trigger_reset
scoreboard players enable @a[tag=in_parkour] level
scoreboard players enable @a[tag=in_parkour] last
scoreboard players enable @a[tag=in_parkour] reset

execute as @a[tag=in_parkour] if entity @e[distance=..1.5,type=armor_stand,scores={acheckpoint=1..}] run function uhc:parkour/at_checkpoint