data modify storage uhc.cfg wbsize set from block 45 7 7 Items

for i in 0..8 run let v = size_init_bor uhc.cfg run data modify storage uhc.cfg wbsize[{Slot:$ib}].tag.display.Lore[0] set value '[{"text":"Diameter: ","color":"white","italic":false},{"text":"$v","color":"aqua"}]'
for i in 0..8 run let v = sizer_init_bor uhc.internal run data modify storage uhc.cfg wbsize[{Slot:$ib}].tag.display.Lore[1] set value '[{"text":"Starts at: ","color":"white","italic":false},{"text":"±$v","color":"aqua"}]'

for i in 9..17 run let v = size_bor_1 uhc.cfg run data modify storage uhc.cfg wbsize[{Slot:$ib}].tag.display.Lore[0] set value '[{"text":"Diameter: ","color":"white","italic":false},{"text":"$v","color":"aqua"}]'
for i in 9..17 run let v = sizer_bor_1 uhc.internal run data modify storage uhc.cfg wbsize[{Slot:$ib}].tag.display.Lore[1] set value '[{"text":"Stops at: ","color":"white","italic":false},{"text":"±$v","color":"aqua"}]'

for i in 18..26 run let v = size_bor_2 uhc.cfg run data modify storage uhc.cfg wbsize[{Slot:$ib}].tag.display.Lore[0] set value '[{"text":"Diameter: ","color":"white","italic":false},{"text":"$v","color":"aqua"}]'
for i in 18..26 run let v = sizer_bor_2 uhc.internal run data modify storage uhc.cfg wbsize[{Slot:$ib}].tag.display.Lore[1] set value '[{"text":"Stops at: ","color":"white","italic":false},{"text":"±$v","color":"aqua"}]'
data modify block ~ ~ ~ Items set from storage uhc.cfg wbsize