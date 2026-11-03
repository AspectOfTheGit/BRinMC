
execute if score .temp temp matches 1 run return run data modify storage buckshot:game game.round.shotgun.shells append from storage buckshot:game temp.shells[0]

$execute store result storage buckshot:game temp.index int 1 run random value 1..$(temp)
function code:game/turn/load/shuffle_shells/append_shell with storage buckshot:game temp


execute \
    store result storage buckshot:game temp.temp int 1 \
    store result score .temp temp \
    if data storage buckshot:game temp.shells[]

function code:game/turn/load/shuffle_shells/iterate with storage buckshot:game temp