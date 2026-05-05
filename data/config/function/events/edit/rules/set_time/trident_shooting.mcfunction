# Reset global time
$data modify storage config:settings edit.global_rules.time.hour set value $(global__hour)i
$data modify storage config:settings edit.global_rules.time.minute set value $(global__minute)i
$data modify storage config:settings edit.global_rules.time.seconde set value $(global__seconde)i
$data modify storage config:settings edit.global_rules.time.milliseconde set value $(global__tick)i

$data modify storage config:settings edit.rules_by_game.trident_shooting.time.hour set value $(trident_shooting__hour)i
$data modify storage config:settings edit.rules_by_game.trident_shooting.time.minute set value $(trident_shooting__minute)i
$data modify storage config:settings edit.rules_by_game.trident_shooting.time.seconde set value $(trident_shooting__seconde)i
$data modify storage config:settings edit.rules_by_game.trident_shooting.time.milliseconde set value $(trident_shooting__tick)i

# Copy time
execute store result score $config__time__trident_shooting__hour config.val run data get storage config:settings edit.rules_by_game.trident_shooting.time.hour 1
execute store result score $config__time__trident_shooting__minute config.val run data get storage config:settings edit.rules_by_game.trident_shooting.time.minute 1
execute store result score $config__time__trident_shooting__seconde config.val run data get storage config:settings edit.rules_by_game.trident_shooting.time.seconde 1
execute store result score $config__time__trident_shooting__milliseconde config.val run data get storage config:settings edit.rules_by_game.trident_shooting.time.milliseconde 1

# Bookmark the rules page
function config:events/edit/rules/keep_page {remove: "global", add: "games"}
