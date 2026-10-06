
$execute unless entity @a[nbt={UUID:$(player)}] run return fail

$execute as @a[nbt={UUID:$(player)}] run function code:misc/queue/dispatch/as_selected_player