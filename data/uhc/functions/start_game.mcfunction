#> gamerules
gamerule naturalRegeneration false
gamerule doDaylightCycle true
# execute in the_nether run gamerule naturalRegeneration false
# execute in the_end run gamerule naturalRegeneration false
gamerule announceAdvancements true
gamerule doInsomnia false
gamerule keepInventory false

#> scoreboard init
scoreboard players set @a deaths 0
scoreboard players set max bossbar 72000
scoreboard players set game_started settings 1
scoreboard players set time timer 0

#> player stuff
spreadplayers 0 0 150 550 true @a
effect give @a instant_health 1 20
effect give @a minecraft:regeneration 45 255 true
effect give @a minecraft:resistance 60 255 false
clear @a
xp set @a 0 points
advancement revoke @a everything

gamemode spectator @a[team=spectator]
gamemode survival @a[gamemode=!spectator]

data modify storage uhc box_name '[{\"text\":\"<\"},{\"text\":\"|||||\",\"bold\":true,\"italic\":true,\"obfuscated\":true,\"color\":\"gold\"},{\"text\":\"The Box\",\"bold\":true,\"italic\":true,\"color\":\"gold\"},{\"text\":\"|||||\",\"bold\":true,\"italic\":true,\"obfuscated\":true,\"color\":\"gold\"},{\"text\":\"> \"}]'
tellraw @a [{"nbt":"box_name","storage":"uhc","interpret":"true"},{"text":"Let the games begin! Our players have been shuffled across the world!","bold":true,"italic":true,"underlined":true,"color":"green"}]

#> world stuff
worldborder warning distance 25
worldborder set 1200
time set day
weather clear 9999
# purge entities
difficulty peaceful
difficulty hard
# allow everyone to see the boss bar
bossbar set minecraft:bossbar visible false
bossbar set minecraft:bossbar visible true
