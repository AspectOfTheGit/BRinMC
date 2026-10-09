# The beginning of it all
# Run when ready to start a new game

tag @a remove playing

function code:misc/queue/tick

execute store result score .temp temp if data storage buckshot:game queue[]
execute if score .temp temp < .min_players const run return run function code:misc/queue/dispatch/insufficient_players

function code:misc/queue/dispatch/iterate with storage buckshot:game temp