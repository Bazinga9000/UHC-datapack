playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2

#> store values on esoteric scoreboard
# increment 1 in each
execute if score esoteric uhc.cfg.opt matches 1 run scoreboard players add gone_fishing uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 2 run scoreboard players add boss uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 3 run scoreboard players add always_elytra uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 4 run scoreboard players add sardines uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 5 run scoreboard players add max_health uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 6 run scoreboard players add dn_speed uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 7 run scoreboard players add covert_teams uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 8 run scoreboard players add wither_bonus uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 9 run scoreboard players add nether_spawn uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 10 run scoreboard players add always_day uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 11 run scoreboard players add always_night uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 12 run scoreboard players add mv_speed uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 13 run scoreboard players add combat_type uhc.esoteric 1
execute if score esoteric uhc.cfg.opt matches 14 run scoreboard players add bomberman uhc.esoteric 1
# bit flippers
scoreboard players operation gone_fishing uhc.esoteric %= 2 constants
scoreboard players operation boss uhc.esoteric %= 2 constants
scoreboard players operation always_elytra uhc.esoteric %= 2 constants
scoreboard players operation sardines uhc.esoteric %= 2 constants
scoreboard players operation dn_speed uhc.esoteric %= 2 constants
scoreboard players operation covert_teams uhc.esoteric %= 2 constants
scoreboard players operation wither_bonus uhc.esoteric %= 2 constants
scoreboard players operation nether_spawn uhc.esoteric %= 2 constants
scoreboard players operation always_day uhc.esoteric %= 2 constants
scoreboard players operation always_night uhc.esoteric %= 2 constants
scoreboard players operation combat_type uhc.esoteric %= 2 constants
scoreboard players operation bomberman uhc.esoteric %= 2 constants

# enums
scoreboard players operation max_health uhc.esoteric %= 4 constants
scoreboard players operation mv_speed uhc.esoteric %= 5 constants

# reset to default
execute if score esoteric uhc.cfg.opt matches 27 run function uhc:cfg/default/esoteric

#> deal with incompatibilities
execute if score esoteric uhc.cfg.opt matches 6 run scoreboard players set always_day uhc.esoteric 0
execute if score esoteric uhc.cfg.opt matches 6 run scoreboard players set always_night uhc.esoteric 0
execute if score esoteric uhc.cfg.opt matches 10 run scoreboard players set always_night uhc.esoteric 0
execute if score esoteric uhc.cfg.opt matches 10 run scoreboard players set dn_speed uhc.esoteric 0
execute if score esoteric uhc.cfg.opt matches 11 run scoreboard players set always_day uhc.esoteric 0
execute if score esoteric uhc.cfg.opt matches 11 run scoreboard players set dn_speed uhc.esoteric 0

execute if score esoteric uhc.cfg.opt matches 13 run scoreboard players set bomberman uhc.esoteric 0
execute if score esoteric uhc.cfg.opt matches 14 run scoreboard players set combat_type uhc.esoteric 0

#> update gui
# fix coords here
data modify block ~ ~ ~ Items set from block 45 7 9 Items

# bit flippers
# make item enchanted if active, unenchanted if inactive
# also mark if they're active
execute if score gone_fishing uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 0b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.inactive
execute if score boss uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 1b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.inactive
execute if score always_elytra uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 2b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.inactive
execute if score sardines uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 3b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.inactive
execute if score dn_speed uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 5b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.inactive
execute if score covert_teams uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 6b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.inactive
execute if score wither_bonus uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 7b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.inactive
execute if score nether_spawn uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 8b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.inactive
execute if score always_day uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 9b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.inactive
execute if score always_night uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 10b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.inactive
execute if score combat_type uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 12b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.inactive
execute if score bomberman uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 13b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.inactive

execute if score gone_fishing uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 0b}].tag.Enchantments set value []
execute if score boss uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 1b}].tag.Enchantments set value []
execute if score always_elytra uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 2b}].tag.Enchantments set value []
execute if score sardines uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 3b}].tag.Enchantments set value []
execute if score dn_speed uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 5b}].tag.Enchantments set value []
execute if score covert_teams uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 6b}].tag.Enchantments set value []
execute if score wither_bonus uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 7b}].tag.Enchantments set value []
execute if score nether_spawn uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 8b}].tag.Enchantments set value []
execute if score always_day uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 9b}].tag.Enchantments set value []
execute if score always_night uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 10b}].tag.Enchantments set value []
execute if score combat_type uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 12b}].tag.Enchantments set value []
execute if score bomberman uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot: 13b}].tag.Enchantments set value []

execute if score gone_fishing uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 0b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.active
execute if score boss uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 1b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.active
execute if score always_elytra uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 2b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.active
execute if score sardines uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 3b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.active
execute if score dn_speed uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 5b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.active
execute if score covert_teams uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 6b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.active
execute if score wither_bonus uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 7b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.active
execute if score nether_spawn uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 8b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.active
execute if score always_day uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 9b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.active
execute if score always_night uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 10b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.active
execute if score combat_type uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 12b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.active
execute if score bomberman uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 13b}].tag.display.Lore[0] set from storage uhc cfg.esoteric.active

execute if score gone_fishing uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 0b}].tag.Enchantments set value [{}]
execute if score boss uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 1b}].tag.Enchantments set value [{}]
execute if score always_elytra uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 2b}].tag.Enchantments set value [{}]
execute if score sardines uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 3b}].tag.Enchantments set value [{}]
execute if score dn_speed uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 5b}].tag.Enchantments set value [{}]
execute if score covert_teams uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 6b}].tag.Enchantments set value [{}]
execute if score wither_bonus uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 7b}].tag.Enchantments set value [{}]
execute if score nether_spawn uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 8b}].tag.Enchantments set value [{}]
execute if score always_day uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 9b}].tag.Enchantments set value [{}]
execute if score always_night uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 10b}].tag.Enchantments set value [{}]
execute if score combat_type uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 12b}].tag.Enchantments set value [{}]
execute if score bomberman uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot: 13b}].tag.Enchantments set value [{}]

# enum 
execute if score max_health uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot:4b}].id set from block 45 8 9 Items[{Slot:0b}].id
execute if score max_health uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot:4b}].tag set from block 45 8 9 Items[{Slot:0b}].tag
execute if score max_health uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot:4b}].id set from block 45 8 9 Items[{Slot:1b}].id
execute if score max_health uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot:4b}].tag set from block 45 8 9 Items[{Slot:1b}].tag
execute if score max_health uhc.esoteric matches 2 run data modify block ~ ~ ~ Items[{Slot:4b}].id set from block 45 8 9 Items[{Slot:2b}].id
execute if score max_health uhc.esoteric matches 2 run data modify block ~ ~ ~ Items[{Slot:4b}].tag set from block 45 8 9 Items[{Slot:2b}].tag
execute if score max_health uhc.esoteric matches 3 run data modify block ~ ~ ~ Items[{Slot:4b}].id set from block 45 8 9 Items[{Slot:3b}].id
execute if score max_health uhc.esoteric matches 3 run data modify block ~ ~ ~ Items[{Slot:4b}].tag set from block 45 8 9 Items[{Slot:3b}].tag

execute if score mv_speed uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot:11b}].id set from block 45 8 9 Items[{Slot:9b}].id
execute if score mv_speed uhc.esoteric matches 0 run data modify block ~ ~ ~ Items[{Slot:11b}].tag set from block 45 8 9 Items[{Slot:9b}].tag
execute if score mv_speed uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot:11b}].id set from block 45 8 9 Items[{Slot:10b}].id
execute if score mv_speed uhc.esoteric matches 1 run data modify block ~ ~ ~ Items[{Slot:11b}].tag set from block 45 8 9 Items[{Slot:10b}].tag
execute if score mv_speed uhc.esoteric matches 2 run data modify block ~ ~ ~ Items[{Slot:11b}].id set from block 45 8 9 Items[{Slot:11b}].id
execute if score mv_speed uhc.esoteric matches 2 run data modify block ~ ~ ~ Items[{Slot:11b}].tag set from block 45 8 9 Items[{Slot:11b}].tag
execute if score mv_speed uhc.esoteric matches 3 run data modify block ~ ~ ~ Items[{Slot:11b}].id set from block 45 8 9 Items[{Slot:12b}].id
execute if score mv_speed uhc.esoteric matches 3 run data modify block ~ ~ ~ Items[{Slot:11b}].tag set from block 45 8 9 Items[{Slot:12b}].tag
execute if score mv_speed uhc.esoteric matches 4 run data modify block ~ ~ ~ Items[{Slot:11b}].id set from block 45 8 9 Items[{Slot:13b}].id
execute if score mv_speed uhc.esoteric matches 4 run data modify block ~ ~ ~ Items[{Slot:11b}].tag set from block 45 8 9 Items[{Slot:13b}].tag
#

scoreboard players set esoteric uhc.cfg.opt 0