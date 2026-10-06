
execute \
    store result storage buckshot:game temp.slot int 1 \
    store result score @s slot \
    if entity @a[tag=playing]

tag @s add playing
tag @s remove inQueue

scoreboard players set .temp temp 0

    # we need to set temp.pos to something valid so that macro can be initiated
data modify storage buckshot:game temp.pos set value "0 0 0"
function code:game/player/spawn with storage buckshot:game temp