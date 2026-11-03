
# Player Joins
execute as @a[tag=!joined] run function code:misc/new_player_join
execute as @a[scores={leave=1..}] run function code:misc/player_join

# Playing
execute as @a[tag=playing] at @s run function code:game/player/tick