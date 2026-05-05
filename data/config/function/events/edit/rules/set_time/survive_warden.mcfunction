# Reset global time
$data modify storage config:settings edit.global_rules.time.hour set value $(global__hour)i
$data modify storage config:settings edit.global_rules.time.minute set value $(global__minute)i
$data modify storage config:settings edit.global_rules.time.seconde set value $(global__seconde)i
$data modify storage config:settings edit.global_rules.time.milliseconde set value $(global__tick)i

$data modify storage config:settings edit.rules_by_game.survive_warden.time.hour set value $(survive_warden__hour)i
$data modify storage config:settings edit.rules_by_game.survive_warden.time.minute set value $(survive_warden__minute)i
$data modify storage config:settings edit.rules_by_game.survive_warden.time.seconde set value $(survive_warden__seconde)i
$data modify storage config:settings edit.rules_by_game.survive_warden.time.milliseconde set value $(survive_warden__tick)i

# Copy time
execute store result score $config__time__survive_warden__hour config.val run data get storage config:settings edit.rules_by_game.survive_warden.time.hour 1
execute store result score $config__time__survive_warden__minute config.val run data get storage config:settings edit.rules_by_game.survive_warden.time.minute 1
execute store result score $config__time__survive_warden__seconde config.val run data get storage config:settings edit.rules_by_game.survive_warden.time.seconde 1
execute store result score $config__time__survive_warden__milliseconde config.val run data get storage config:settings edit.rules_by_game.survive_warden.time.milliseconde 1

# Bookmark the rules page
function config:events/edit/rules/keep_page {remove: "global", add: "games"}
