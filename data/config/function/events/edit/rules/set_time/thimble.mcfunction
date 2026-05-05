# Reset global time
$data modify storage config:settings edit.global_rules.time.hour set value $(global__hour)i
$data modify storage config:settings edit.global_rules.time.minute set value $(global__minute)i
$data modify storage config:settings edit.global_rules.time.seconde set value $(global__seconde)i
$data modify storage config:settings edit.global_rules.time.milliseconde set value $(global__tick)i

$data modify storage config:settings edit.rules_by_game.thimble.time.hour set value $(thimble__hour)i
$data modify storage config:settings edit.rules_by_game.thimble.time.minute set value $(thimble__minute)i
$data modify storage config:settings edit.rules_by_game.thimble.time.seconde set value $(thimble__seconde)i
$data modify storage config:settings edit.rules_by_game.thimble.time.milliseconde set value $(thimble__tick)i

# Copy time
execute store result score $config__time__thimble__hour config.val run data get storage config:settings edit.rules_by_game.thimble.time.hour 1
execute store result score $config__time__thimble__minute config.val run data get storage config:settings edit.rules_by_game.thimble.time.minute 1
execute store result score $config__time__thimble__seconde config.val run data get storage config:settings edit.rules_by_game.thimble.time.seconde 1
execute store result score $config__time__thimble__milliseconde config.val run data get storage config:settings edit.rules_by_game.thimble.time.milliseconde 1

# Bookmark the rules page
function config:events/edit/rules/keep_page {remove: "global", add: "games"}
