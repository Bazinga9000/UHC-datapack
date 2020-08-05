execute as @a[scores={uhc.tp=1}] run tp @s 0 0 0
execute as @a[scores={uhc.tp=2}] run tp @s 0 0 0
execute as @a[scores={uhc.tp=3}] run tp @s 0 0 0
execute as @a[scores={uhc.tp=4}] run tp @s 0 0 0
execute as @a[scores={uhc.tp=5}] run tp @s 0 0 0
execute as @a[scores={uhc.tp=6}] run tp @s 0 0 0
execute as @a[scores={uhc.tp=7}] run tp @s 0 0 0
execute as @a[scores={uhc.tp=8}] run tp @s 0 0 0
execute as @a[scores={uhc.tp=9}] run tp @s 0 0 0

scoreboard players set @a uhc.tp 0
scoreboard players enable @a[nbt={Dimension: "minecraft:lobby"}] uhc.tp
