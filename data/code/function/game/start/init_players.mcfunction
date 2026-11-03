# Initialise players
# as @a[tag=playing]

attribute @s jump_strength base set 0

data modify storage buckshot:game game.slots append value {player:"loading",items:{},alive:true,disconnected:false,charges:-99,jammed:0}
data modify storage buckshot:game game.slots[{player:"loading"}].player set from entity @s UUID

summon mannequin 0.50 56.00 0.50 {Tags:["new","mannequin"],Invulnerable:1b,Silent:1b,immovable:1b,NoGravity:1b,Team:player}
data modify entity @n[type=mannequin,tag=mannequin,tag=new] profile.id set from entity @s UUID
visibility @s hide @n[type=mannequin,tag=mannequin,tag=new]
tag @n[type=mannequin,tag=mannequin,tag=new] remove new