
data modify storage buckshot:game temp.player set from storage buckshot:game queue[0].UUID
data remove storage buckshot:game queue[0]

function code:misc/queue/dispatch/player_selected with storage buckshot:game temp

execute store result score .temp temp if entity @a[tag=playing]
execute unless score .temp temp >= max_players const if data storage buckshot:game queue[0] run function code:misc/queue/dispatch/iterate with storage buckshot:game temp