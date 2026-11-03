# reload the shotgun (and give items and whatever)

    # randomise number of shells
execute \
    store result storage buckshot:game game.round.shotgun.total_shells int 1 \
    store result score .shells_left var \
    run random value 2..8

    # randomise polarity of shells
function code:game/turn/load/randomise_shells