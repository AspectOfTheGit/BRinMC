
tellraw @a {color:"#00FF00",text:"Shotgun is load"}

#> Scoreboards

# System
scoreboard objectives add temp dummy
scoreboard objectives add const dummy
# Player
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add pid dummy
scoreboard objectives add slot dummy

#> Constants

# spaces for players to play
data remove storage buckshot:game slots
data modify storage buckshot:game slots append value {"pos":"3.00 60.00 0.50 90.0 0.0", "rot":"90.0 0.0", "display_rot": "0.0 0.0"}
data modify storage buckshot:game slots append value {"pos":"0.5 60.00 3.00 180.0 0.0", "rot":"180.0 0.0", "display_rot": "90.0 0.0"}
data modify storage buckshot:game slots append value {"pos":"-2.00 60.00 0.50 -90.0 0.0", "rot":"-90.0 0.0", "display_rot": "180.0 0.0"}
data modify storage buckshot:game slots append value {"pos":"0.50 60.00 -2.00 0.0 0.0", "rot":"0.0 0.0", "display_rot": "-90.0 0.0"}

# spaces for items to go to (relative to rotation)
data remove storage buckshot:game item_slots
data modify storage buckshot:game item_slots append value "0.850 0.500 0.450"
data modify storage buckshot:game item_slots append value "0.850 0.500 0.150"
data modify storage buckshot:game item_slots append value "0.850 0.500 -0.650"
data modify storage buckshot:game item_slots append value "0.850 0.500 -0.950"
data modify storage buckshot:game item_slots append value "1.250 0.500 0.450"
data modify storage buckshot:game item_slots append value "1.250 0.500 0.150"
data modify storage buckshot:game item_slots append value "1.250 0.500 -0.650"
data modify storage buckshot:game item_slots append value "1.250 0.500 -0.950"

# scores
execute store result score .max_players const if data storage buckshot:game slots[]
scoreboard players set .min_players const 1

#> Base Entities
kill @e[tag=baseEntity]
summon marker 0.5 60.5 0.5 {Tags:["baseEntity"],UUID:[I;0,0,0,0]}

#> Functions
function code:misc/world_desc/init