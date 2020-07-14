execute as @a run team leave @s
# reset unuseds
function uhc:teams/clear

execute as @a[tag=spectator] run team join spectator
function uhc:teams/randomize
function uhc:teams/announce
function uhc:teams/mark_unused