#after generating, announce what the newly formed teams are
function uhc:teams/remove_prefixes
execute if entity @a[team=spectator] run tellraw @a [{"nbt":"team_names[0]","storage":"uhc","interpret":"true"},{"text":": ","color":"gray"},{"selector":"@a[team=spectator]","color":"white"}]
execute if entity @a[team=team1] run tellraw @a [{"nbt":"team_names[$i]","storage":"uhc","interpret":"true"},{"text":": ","color":"gray"},{"selector":"@a[team=team$i]","color":"white"}]
function uhc:teams/add_prefixes