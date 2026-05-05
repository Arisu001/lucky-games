# Reset time for all game
$data modify storage config:settings edit.rules_by_game.boat_race.time.hour set value $(boat_race__hour)i
$data modify storage config:settings edit.rules_by_game.boat_race.time.minute set value $(boat_race__minute)i
$data modify storage config:settings edit.rules_by_game.boat_race.time.seconde set value $(boat_race__seconde)i
$data modify storage config:settings edit.rules_by_game.boat_race.time.milliseconde set value $(boat_race__tick)i
$data modify storage config:settings edit.rules_by_game.burn_survival.time.hour set value $(burn_survival__hour)i
$data modify storage config:settings edit.rules_by_game.burn_survival.time.minute set value $(burn_survival__minute)i
$data modify storage config:settings edit.rules_by_game.burn_survival.time.seconde set value $(burn_survival__seconde)i
$data modify storage config:settings edit.rules_by_game.burn_survival.time.milliseconde set value $(burn_survival__tick)i
$data modify storage config:settings edit.rules_by_game.golf.time.hour set value $(golf__hour)i
$data modify storage config:settings edit.rules_by_game.golf.time.minute set value $(golf__minute)i
$data modify storage config:settings edit.rules_by_game.golf.time.seconde set value $(golf__seconde)i
$data modify storage config:settings edit.rules_by_game.golf.time.milliseconde set value $(golf__tick)i
$data modify storage config:settings edit.rules_by_game.spleef.time.hour set value $(spleef__hour)i
$data modify storage config:settings edit.rules_by_game.spleef.time.minute set value $(spleef__minute)i
$data modify storage config:settings edit.rules_by_game.spleef.time.seconde set value $(spleef__seconde)i
$data modify storage config:settings edit.rules_by_game.spleef.time.milliseconde set value $(spleef__tick)i
$data modify storage config:settings edit.rules_by_game.survive_warden.time.hour set value $(survive_warden__hour)i
$data modify storage config:settings edit.rules_by_game.survive_warden.time.minute set value $(survive_warden__minute)i
$data modify storage config:settings edit.rules_by_game.survive_warden.time.seconde set value $(survive_warden__seconde)i
$data modify storage config:settings edit.rules_by_game.survive_warden.time.milliseconde set value $(survive_warden__tick)i
$data modify storage config:settings edit.rules_by_game.thimble.time.hour set value $(thimble__hour)i
$data modify storage config:settings edit.rules_by_game.thimble.time.minute set value $(thimble__minute)i
$data modify storage config:settings edit.rules_by_game.thimble.time.seconde set value $(thimble__seconde)i
$data modify storage config:settings edit.rules_by_game.thimble.time.milliseconde set value $(thimble__tick)i
$data modify storage config:settings edit.rules_by_game.trident_shooting.time.hour set value $(trident_shooting__hour)i
$data modify storage config:settings edit.rules_by_game.trident_shooting.time.minute set value $(trident_shooting__minute)i
$data modify storage config:settings edit.rules_by_game.trident_shooting.time.seconde set value $(trident_shooting__seconde)i
$data modify storage config:settings edit.rules_by_game.trident_shooting.time.milliseconde set value $(trident_shooting__tick)i

# Same time for all game
$data modify storage config:settings edit.global_rules.time.hour set value $(global__hour)i
$data modify storage config:settings edit.global_rules.time.minute set value $(global__minute)i
$data modify storage config:settings edit.global_rules.time.seconde set value $(global__seconde)i
$data modify storage config:settings edit.global_rules.time.milliseconde set value $(global__tick)i

# Copy time
execute store result score $config__time__global__hour config.val run data get storage config:settings edit.global_rules.time.hour 1
execute store result score $config__time__global__minute config.val run data get storage config:settings edit.global_rules.time.minute 1
execute store result score $config__time__global__seconde config.val run data get storage config:settings edit.global_rules.time.seconde 1
execute store result score $config__time__global__milliseconde config.val run data get storage config:settings edit.global_rules.time.milliseconde 1

# Bookmark the rules page
function config:events/edit/rules/keep_page {remove: "games", add: "global"}
