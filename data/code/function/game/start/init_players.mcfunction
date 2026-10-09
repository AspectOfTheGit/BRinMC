# Initialise players
# as @a[tag=playing]

attribute @s jump_strength base set 0

data modify storage buckshot:game game.slots append value {player:"loading",items:{},alive:true,disconnected:false,charges:-99,jammed:0}
data modify storage buckshot:game game.slots[{player:"loading"}].player set from entity @s UUID