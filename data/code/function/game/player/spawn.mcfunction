# Join @s into the game
# MACRO: slot, pos

# get slot position
$data modify storage buckshot:game temp.pos set from storage buckshot:game slots[$(slot)].pos
# we have to restart the function to update the macro, this is a strange method but works
scoreboard players add .temp temp 1
execute if score .temp temp matches 1 run return run function code:game/player/spawn with storage buckshot:game temp
# teleport the player to the position
$tp @s $(pos)
