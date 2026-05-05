# Reset global time
$data modify storage config:settings edit.global_rules.time.hour set value $(global__hour)i
$data modify storage config:settings edit.global_rules.time.minute set value $(global__minute)i
$data modify storage config:settings edit.global_rules.time.seconde set value $(global__seconde)i
$data modify storage config:settings edit.global_rules.time.milliseconde set value $(global__tick)i

$data modify storage config:settings edit.rules_by_game.golf.time.hour set value $(golf__hour)i
$data modify storage config:settings edit.rules_by_game.golf.time.minute set value $(golf__minute)i
$data modify storage config:settings edit.rules_by_game.golf.time.seconde set value $(golf__seconde)i
$data modify storage config:settings edit.rules_by_game.golf.time.milliseconde set value $(golf__tick)i

# Copy time
execute store result score $config__time__golf__hour config.val run data get storage config:settings edit.rules_by_game.golf.time.hour 1
execute store result score $config__time__golf__minute config.val run data get storage config:settings edit.rules_by_game.golf.time.minute 1
execute store result score $config__time__golf__seconde config.val run data get storage config:settings edit.rules_by_game.golf.time.seconde 1
execute store result score $config__time__golf__milliseconde config.val run data get storage config:settings edit.rules_by_game.golf.time.milliseconde 1

# Bookmark the rules page
function config:events/edit/rules/keep_page {remove: "global", add: "games"}
