# initialise defibrillator

$execute \
    store result storage buckshot:game game.slots[].charges int 1 \
    store result score .max_charges var \
    run random value $(min_random_charges)..$(max_random_charges)
