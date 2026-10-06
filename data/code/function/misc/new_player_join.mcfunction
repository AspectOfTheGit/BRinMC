# execute as @a[tag=!joined] on tick

function code:misc/player_join

tag @s add joined

# Assign Player ID
execute \
    store result score @s pid \
    run scoreboard players add .next pid 1
