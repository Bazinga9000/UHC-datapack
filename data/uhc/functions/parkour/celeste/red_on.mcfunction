execute as @e[tag=redblock] at @s run setblock ~ ~ ~ minecraft:pink_concrete
execute as @e[tag=redblock] at @s run kill @e[type=minecraft:falling_block,distance=0]
execute as @e[tag=blueblock] at @s run setblock ~ ~ ~ air
execute as @e[tag=blueblock] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1, Time:1}