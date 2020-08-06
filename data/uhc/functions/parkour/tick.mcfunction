execute positioned 0 5 -48 as @a[distance=..3, tag=!in_parkour] run function uhc:parkour/enter
execute positioned 0 24 -14 as @a[distance=..3, tag=in_parkour] run function uhc:parkour/exit
execute as @a[tag=in_parkour, scores={cstick=1..}] run function uhc:parkour/cstick

execute as @r[tag=in_parkour,scores={level=1..}] run function uhc:parkour/trigger_level
execute as @a[tag=in_parkour,scores={reset=1..}] run function uhc:parkour/trigger_reset
execute as @r[tag=in_parkour,scores={last=1..}] run function uhc:parkour/trigger_last
scoreboard players enable @a[tag=in_parkour] level
scoreboard players enable @a[tag=in_parkour] reset
scoreboard players enable @a[tag=in_parkour] last

execute as @a[tag=in_parkour,gamemode=!creative,gamemode=!spectator] at @s if entity @e[distance=..1.5,type=armor_stand,scores={acheckpoint=1..}] run function uhc:parkour/at_checkpoint

scoreboard players add celtime uhc.internal 1
scoreboard players operation celtime uhc.internal %= 128 constants
function uhc:parkour/celeste/tick