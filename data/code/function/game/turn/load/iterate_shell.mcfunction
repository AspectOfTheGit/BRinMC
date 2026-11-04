# randomise next shell polarity

execute store result storage buckshot:game temp.polarity int 1 run random value 0..1
data modify storage buckshot:game game.round.shotgun.shells append from storage buckshot:game temp.polarity

scoreboard players add .temp temp 1

execute unless score .temp temp = .shells_left var \
    run function code:game/turn/load/iterate_shell