execute if entity @a[tag=in_parkour,scores={level=1..}] as @r[tag=in_parkour,scores={level=1..}] run function:trigger_level.mcfunction
execute if entity @a[tag=in_parkour,scores={last=1..}] as @r[tag=in_parkour,scores={last=1..}] run function:trigger_last.mcfunction
execute as @a[tag=in_parkour,scores={reset=1..}] if entity @s run function:trigger_reset.mcfunction
scoreboard players enable @a[tag=in_parkour] level
scoreboard players enable @a[tag=in_parkour] last
scoreboard players enable @a[tag=in_parkour] reset

execute as @a[tag=in_parkour] if entity @e[distance=..1.5,type=armor_stand,scores={acheckpoint=1..}] run function:at_checkpoint.mcfunction