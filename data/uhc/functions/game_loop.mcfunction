# dead users or users spawning in lobby should be put in spectator (if not debugger)
tag @a[nbt={Dimension: "minecraft:lobby"}, tag=!debugger] add give_spec
gamemode spectator @a[tag=give_spec]
execute as @a[tag=give_spec] run tp @s @r[gamemode=survival]
tag @a remove give_spec
gamemode spectator @a[scores={uhc.deaths=1..}, gamemode=!spectator, gamemode=!creative, tag=!debugger]
gamemode spectator @a[team=spectator, gamemode=!spectator, gamemode=!creative, tag=!debugger]

# at death, respawn at place of death
execute as @a[scores={uhc.deaths=0}] at @s run spawnpoint

execute as @a[gamemode=spectator] run effect give @s night_vision 15 0 true
execute as @a run function uhc:hud/update
function uhc:team_death/check_deaths

# apply esoterics
execute if score dn_speed uhc.esoteric matches 1 run function uhc:esoteric/loop/dn_speed
execute if score bomberman uhc.esoteric matches 1 run function uhc:esoteric/loop/bomberman

# check for events, then run bossbar
scoreboard players add time uhc.bossbar 1
execute if score time uhc.bossbar = warn1 uhc.internal run function uhc:event/warning/warn1
execute if score time uhc.bossbar = warn2 uhc.internal run function uhc:event/warning/warn2
execute if score time uhc.bossbar = warn3 uhc.internal run function uhc:event/warning/warn3
execute if score stage uhc.bossbar matches ..0 if score time uhc.bossbar >= border1 uhc.internal run function uhc:event/border1
execute if score stage uhc.bossbar matches ..1 if score time uhc.bossbar >= borderstop uhc.internal run function uhc:event/borderstop
execute if score stage uhc.bossbar matches ..2 if score time uhc.bossbar >= border2 uhc.internal run function uhc:event/border2
execute if score stage uhc.bossbar matches ..3 if score time uhc.bossbar >= dmwarn uhc.internal run function uhc:event/dmwarn
execute if score stage uhc.bossbar matches ..4 if score time uhc.bossbar >= deathmatch uhc.internal run function uhc:event/deathmatch
function uhc:bossbar