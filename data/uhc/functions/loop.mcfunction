scoreboard players add @a spawned 0
tp @a[scores={spawned=0}] 0 245 0
execute if block 0 254 0 air run gamemode spectator @a[scores={spawned=0}]
execute as @a[scores={spawned=0}] run spawnpoint
scoreboard players set @a[scores={spawned=0}] spawned 1
bossbar set minecraft:bossbar players @a

execute if score 1 constants = game_started settings run function uhc:game_loop
execute if score 0 constants = game_started settings in minecraft:overworld run function uhc:lobby_loop
