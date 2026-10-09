
execute \
    as @a[tag=!inQueue,tag=!playing] \
    run function code:misc/queue/add

tag @a[tag=!playing] add inQueue