execute if entity @a[tag=in_parkour,scores={level=1..}] as @r[tag=in_parkour,scores={level=1..}] run function uhc:parkour/trigger_level
execute as @a[tag=in_parkour,scores={reset=1..}] if entity @s run function uhc:parkour/trigger_reset
execute if entity @a[tag=in_parkour,scores={last=1..}] as @r[tag=in_parkour,scores={last=1..}] run function uhc:parkour/trigger_last
scoreboard players enable @a[tag=in_parkour] level
scoreboard players enable @a[tag=in_parkour] reset
scoreboard players enable @a[tag=in_parkour] last

execute as @a[tag=in_parkour,gamemode=!creative,gamemode=!spectator] at @s if entity @e[distance=..1.5,type=armor_stand,scores={acheckpoint=1..}] run function uhc:parkour/at_checkpoint

scoreboard players add celtime uhc.internal 1
scoreboard players operation celtime uhc.internal %= 128 constants
function uhc:parkour/celeste/tick