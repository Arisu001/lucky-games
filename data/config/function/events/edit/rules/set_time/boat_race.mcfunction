# Reset global time
$data modify storage config:settings edit.global_rules.time.hour set value $(global__hour)i
$data modify storage config:settings edit.global_rules.time.minute set value $(global__minute)i
$data modify storage config:settings edit.global_rules.time.seconde set value $(global__seconde)i
$data modify storage config:settings edit.global_rules.time.milliseconde set value $(global__tick)i

$data modify storage config:settings edit.rules_by_game.boat_race.time.hour set value $(boat_race__hour)i
$data modify storage config:settings edit.rules_by_game.boat_race.time.minute set value $(boat_race__minute)i
$data modify storage config:settings edit.rules_by_game.boat_race.time.seconde set value $(boat_race__seconde)i
$data modify storage config:settings edit.rules_by_game.boat_race.time.milliseconde set value $(boat_race__tick)i

# Copy time
execute store result score $config__time__boat_race__hour config.val run data get storage config:settings edit.rules_by_game.boat_race.time.hour 1
execute store result score $config__time__boat_race__minute config.val run data get storage config:settings edit.rules_by_game.boat_race.time.minute 1
execute store result score $config__time__boat_race__seconde config.val run data get storage config:settings edit.rules_by_game.boat_race.time.seconde 1
execute store result score $config__time__boat_race__milliseconde config.val run data get storage config:settings edit.rules_by_game.boat_race.time.milliseconde 1

# Bookmark the rules page
function config:events/edit/rules/keep_page {remove: "global", add: "games"}
 