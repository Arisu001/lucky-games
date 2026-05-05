# Same for all game
$data modify storage config:settings edit.global_rules.auto_reset set value "$(global)"

# Per game
$data modify storage config:settings edit.rules_by_game.boat_race.auto_reset set value "$(boat_race)"
$data modify storage config:settings edit.rules_by_game.burn_survival.auto_reset set value "$(burn_survival)"
$data modify storage config:settings edit.rules_by_game.golf.auto_reset set value "$(golf)"
$data modify storage config:settings edit.rules_by_game.jump_league.auto_reset set value "$(jump_league)"
$data modify storage config:settings edit.rules_by_game.spleef.auto_reset set value "$(spleef)"
$data modify storage config:settings edit.rules_by_game.survive_warden.auto_reset set value "$(survive_warden)"
$data modify storage config:settings edit.rules_by_game.thimble.auto_reset set value "$(thimble)"
$data modify storage config:settings edit.rules_by_game.trident_shooting.auto_reset set value "$(trident_shooting)"

# Bookmark the rules page
execute unless data storage config:settings edit.global_rules.player{auto_reset: ""} run function config:events/edit/rules/keep_page {remove:  "games", add: "global"}
execute if data storage config:settings edit.global_rules.player{auto_reset: ""} run function config:events/edit/rules/keep_page     {remove: "global", add:  "games"}
