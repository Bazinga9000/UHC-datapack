execute unless score nether_spawn uhc.esoteric matches 1 in game run tp @a 0 255 0
execute if score nether_spawn uhc.esoteric matches 1 in game_nether run tp @a 0 255 0

execute unless score nether_spawn uhc.esoteric matches 1 if score respect_teams uhc.stsetting matches 1 run let x = spread_range uhc.internal run let y = spread_max uhc.internal run execute in game run spreadplayers 0 0 $x $y under 125 true @a
execute unless score nether_spawn uhc.esoteric matches 1 unless score respect_teams uhc.stsetting matches 1 run let x = spread_range uhc.internal run let y = spread_max uhc.internal run execute in game run spreadplayers 0 0 $x $y under 125 false @a

execute if score nether_spawn uhc.esoteric matches 1 if score respect_teams uhc.stsetting matches 1 run let x = spread_range uhc.internal run let y = spread_max uhc.internal run execute in game_nether run spreadplayers 0 0 $x $y under 125 true @a
execute if score nether_spawn uhc.esoteric matches 1 unless score respect_teams uhc.stsetting matches 1 run let x = spread_range uhc.internal run let y = spread_max uhc.internal run execute in game_nether run spreadplayers 0 0 $x $y under 125 false @a