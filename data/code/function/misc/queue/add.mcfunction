# Add player to queue

data modify storage buckshot:game queue \
    append value {UUID:"loading"}

data modify storage buckshot:game queue[{UUID:"loading"}].UUID \
    set from entity @s UUID