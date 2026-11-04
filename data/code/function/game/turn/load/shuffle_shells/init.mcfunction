# shuffle shells in the shotgun.

data modify storage buckshot:game temp.shells set from storage buckshot:game game.round.shotgun.shells

execute \
    store result storage buckshot:game temp.temp int 1 \
    store result score .temp temp \
    if data storage buckshot:game temp.shells[]

data remove storage buckshot:game game.round.shotgun.shells[]
function code:game/turn/load/shuffle_shells/iterate with storage buckshot:game temp

    # cleanup
data remove storage buckshot:game temp.shells