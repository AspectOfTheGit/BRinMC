
execute as @a[tag=playing] if score @s slot = .temp temp run function code:game/start/init_players
scoreboard players add .temp temp 1
execute as @a[tag=playing] if score @s slot = .temp temp run function code:game/start/_loop_player_slot