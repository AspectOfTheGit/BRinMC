# start a new round

    # reset/modify round variables
scoreboard players set .max_charges var 0
scoreboard players add .round var 1

    # randomise defibrillator charges
execute store result storage buckshot:game temp.min_random_charges int 1 run scoreboard players get .min_random_charges const
execute store result storage buckshot:game temp.max_random_charges int 1 run scoreboard players get .max_random_charges const
function code:game/round/init_defib with storage buckshot:game temp

    # display new round text
title @a title ""
title @a times 0 10 40
title @a subtitle [{color:red,text:"ROUND "},{color:red,score:{name:".round",objective:var}}]