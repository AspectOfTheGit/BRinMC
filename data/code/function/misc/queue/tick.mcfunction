
execute \
    as @a[tag=!inQueue,tag=!playing] \
    run data modify storage buckshot:game queue \
    append from entity @s UUID

tag @a[tag=!playing] add inQueue