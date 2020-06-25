scoreboard objectives remove deaths
gamerule naturalRegeneration true
execute in the_nether run gamerule naturalRegeneration true
execute in the_end run gamerule naturalRegeneration true
gamerule doDaylightCycle false
gamerule doMobSpawning false
gamerule announceAdvancements false
gamemode adventure @a

advancement revoke @a everything

time set day
difficulty peaceful
bossbar set minecraft:bossbar visible false
scoreboard players set game_started settings 0
