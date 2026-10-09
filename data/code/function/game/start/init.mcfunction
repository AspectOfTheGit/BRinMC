# clear up old game if applicable and start a new one

#> clear old game
data remove storage buckshot:game game

#> start new game
    # queue dispatch adds players to the game and teleports them to their positions
function code:misc/queue/dispatch/init
    # initialise players by adding attributes, creating their variables in storage, etc. in order of slot
scoreboard players set .temp temp 0
function code:game/start/_loop_player_slot

    # round variables
data modify storage buckshot:game game.round set value {shotgun:{shells:[],sawed:false},max_charges:-99}