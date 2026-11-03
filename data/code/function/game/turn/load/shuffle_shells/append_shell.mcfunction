
$data modify storage buckshot:game game.round.shotgun.shells append from storage buckshot:game temp.shells[$(index)]
$data remove storage buckshot:game temp.shells[$(index)]