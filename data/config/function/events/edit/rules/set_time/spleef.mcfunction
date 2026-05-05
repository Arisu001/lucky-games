# Reset global time
$data modify storage config:settings edit.global_rules.time.hour set value $(global__hour)i
$data modify storage config:settings edit.global_rules.time.minute set value $(global__minute)i
$data modify storage config:settings edit.global_rules.time.seconde set value $(global__seconde)i
$data modify storage config:settings edit.global_rules.time.milliseconde set value $(global__tick)i

$data modify storage config:settings edit.rules_by_game.spleef.time.hour set value $(spleef__hour)i
$data modify storage config:settings edit.rules_by_game.spleef.time.minute set value $(spleef__minute)i
$data modify storage config:settings edit.rules_by_game.spleef.time.seconde set value $(spleef__seconde)i
$data modify storage config:settings edit.rules_by_game.spleef.time.milliseconde set value $(spleef__tick)i

# Copy time
execute store result score $config__time__spleef__hour config.val run data get storage config:settings edit.rules_by_game.spleef.time.hour 1
execute store result score $config__time__spleef__minute config.val run data get storage config:settings edit.rules_by_game.spleef.time.minute 1
execute store result score $config__time__spleef__seconde config.val run data get storage config:settings edit.rules_by_game.spleef.time.seconde 1
execute store result score $config__time__spleef__milliseconde config.val run data get storage config:settings edit.rules_by_game.spleef.time.milliseconde 1

# Bookmark the rules page
function config:events/edit/rules/keep_page {remove: "global", add: "games"}
