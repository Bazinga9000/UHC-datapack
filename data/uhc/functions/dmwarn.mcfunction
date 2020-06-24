tellraw @a ["",{"text":"<"},{"text":"|||||","bold":true,"italic":true,"obfuscated":true,"color":"gold"},{"text":"The Box","bold":true,"italic":true,"color":"gold"},{"text":"|||||","bold":true,"italic":true,"obfuscated":true,"color":"gold"},{"text":"> "},{"text":"The worldborder has stopped. If the game does not end within ten minutes, I shall end it myself.","italic":true,"color":"dark_aqua"}]
execute store result score max bossbar run scoreboard players get deathmatch constants
execute store result score min bossbar run scoreboard players get dmwarn constants
bossbar set minecraft:bossbar name {"text":"The Battle at the Top of the World","color":"white"}
bossbar set minecraft:bossbar color white

scoreboard players set display_worldborder_distance settings 0
