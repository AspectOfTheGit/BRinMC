# as player joins the world
scoreboard players set @s leave 0
scoreboard players reset @s slot

team join player

tag @s remove inQueue
tag @s remove playing

attribute @s minecraft:jump_strength base reset

function code:misc/queue/remove with entity @s

gamemode spectator