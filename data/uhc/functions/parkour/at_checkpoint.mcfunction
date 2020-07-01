execute if score @s pcheckpoint < @e[distance=..1.5,type=armor_stand,scores={acheckpoint=1..},limit=1] acheckpoint run tag @s add new_cpt
execute if entity @s[tag=new_cpt] as @e[type=armor_stand,scores={acheckpoint=1..}] if score @s acheckpoint = @a[tag=new_cpt,limit=1] pcheckpoint run tellraw @a [{"selector":"@a[tag=new_cpt]"},{"text":" has cleared "},{"selector":"@s"},{"text":"!"}]
execute if entity @s[tag=new_cpt] run scoreboard players operation @s pcheckpoint = @e[distance=..1.5,type=armor_stand,scores={acheckpoint=1..},limit=1] acheckpoint
tag @s remove new_cpt