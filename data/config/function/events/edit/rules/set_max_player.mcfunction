# Same for all game
$data modify storage config:settings edit.global_rules.player.count set value $(global)i

# Per game
$data modify storage config:settings edit.rules_by_game.boat_race.player.count set value $(boat_race)i
$data modify storage config:settings edit.rules_by_game.burn_survival.player.count set value $(burn_survival)i
$data modify storage config:settings edit.rules_by_game.golf.player.count set value $(golf)i
$data modify storage config:settings edit.rules_by_game.jump_league.player.count set value $(jump_league)i
$data modify storage config:settings edit.rules_by_game.spleef.player.count set value $(spleef)i
$data modify storage config:settings edit.rules_by_game.survive_warden.player.count set value $(survive_warden)i
$data modify storage config:settings edit.rules_by_game.thimble.player.count set value $(thimble)i
$data modify storage config:settings edit.rules_by_game.trident_shooting.player.count set value $(trident_shooting)i

# Bookmark the rules page
execute unless data storage config:settings edit.global_rules.player{count: "i"} run function config:events/edit/rules/keep_page {remove:  "games", add: "global"}
execute if data storage config:settings edit.global_rules.player{count: "i"} run function config:events/edit/rules/keep_page     {remove: "global", add:  "games"}
