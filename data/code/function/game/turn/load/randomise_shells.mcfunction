# randomise shells and call gun_anim

    # there must always be at least one blank and one live
data modify storage buckshot:game temp.shells append value 0
data modify storage buckshot:game temp.shells append value 1

    # randomise the rest of the shells
scoreboard players set .temp temp 2
execute unless score .temp temp = .shells_left var \
    run function code:game/turn/load/iterate_shell

    # shuffle the shells
function code:game/turn/load/shuffle_shells/init