# Reset global time
$data modify storage config:settings edit.global_rules.time.hour set value $(global__hour)i
$data modify storage config:settings edit.global_rules.time.minute set value $(global__minute)i
$data modify storage config:settings edit.global_rules.time.seconde set value $(global__seconde)i
$data modify storage config:settings edit.global_rules.time.milliseconde set value $(global__tick)i

$data modify storage config:settings edit.rules_by_game.jump_league.time.hour set value $(jump_league__hour)i
$data modify storage config:settings edit.rules_by_game.jump_league.time.minute set value $(jump_league__minute)i
$data modify storage config:settings edit.rules_by_game.jump_league.time.seconde set value $(jump_league__seconde)i
$data modify storage config:settings edit.rules_by_game.jump_league.time.milliseconde set value $(jump_league__tick)i

# Copy time
execute store result score $config__time__jump_league__hour config.val run data get storage config:settings edit.rules_by_game.jump_league.time.hour 1
execute store result score $config__time__jump_league__minute config.val run data get storage config:settings edit.rules_by_game.jump_league.time.minute 1
execute store result score $config__time__jump_league__seconde config.val run data get storage config:settings edit.rules_by_game.jump_league.time.seconde 1
execute store result score $config__time__jump_league__milliseconde config.val run data get storage config:settings edit.rules_by_game.jump_league.time.milliseconde 1

# Bookmark the rules page
function config:events/edit/rules/keep_page {remove: "global", add: "games"}
