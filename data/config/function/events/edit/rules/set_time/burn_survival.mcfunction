# Reset global time
$data modify storage config:settings edit.global_rules.time.hour set value $(global__hour)i
$data modify storage config:settings edit.global_rules.time.minute set value $(global__minute)i
$data modify storage config:settings edit.global_rules.time.seconde set value $(global__seconde)i
$data modify storage config:settings edit.global_rules.time.milliseconde set value $(global__tick)i

$data modify storage config:settings edit.rules_by_game.burn_survival.time.hour set value $(burn_survival__hour)i
$data modify storage config:settings edit.rules_by_game.burn_survival.time.minute set value $(burn_survival__minute)i
$data modify storage config:settings edit.rules_by_game.burn_survival.time.seconde set value $(burn_survival__seconde)i
$data modify storage config:settings edit.rules_by_game.burn_survival.time.milliseconde set value $(burn_survival__tick)i

# Copy time
execute store result score $config__time__burn_survival__hour config.val run data get storage config:settings edit.rules_by_game.burn_survival.time.hour 1
execute store result score $config__time__burn_survival__minute config.val run data get storage config:settings edit.rules_by_game.burn_survival.time.minute 1
execute store result score $config__time__burn_survival__seconde config.val run data get storage config:settings edit.rules_by_game.burn_survival.time.seconde 1
execute store result score $config__time__burn_survival__milliseconde config.val run data get storage config:settings edit.rules_by_game.burn_survival.time.milliseconde 1

# Bookmark the rules page
function config:events/edit/rules/keep_page {remove: "global", add: "games"}
