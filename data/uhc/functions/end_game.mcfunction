setblock -10 244 -10 minecraft:structure_block[mode=load]{name:"uhc:box",posX:0,posY:0,posZ:0,sizeX:11,sizeY:21,sizeZ:11,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
tp @a 0 246 0
scoreboard objectives remove deaths
gamerule naturalRegeneration true
execute in the_nether run gamerule naturalRegeneration true
execute in the_end run gamerule naturalRegeneration true
execute as @a run spawnpoint
gamemode adventure @a
gamerule doDaylightCycle false
time set day
difficulty peaceful
gamerule doMobSpawning false
scoreboard objectives remove timer
gamerule announceAdvancements false
advancement revoke @a everything
bossbar set minecraft:bossbar visible false
scoreboard players set game_started settings 0
setblock -10 244 -10 minecraft:structure_block[mode=load]{name:"uhc:box",posX:0,posY:0,posZ:0,sizeX:11,sizeY:21,sizeZ:11,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock -10 245 -10 redstone_block
