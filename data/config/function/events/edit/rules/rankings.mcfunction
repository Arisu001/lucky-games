# Same for all game
$data modify storage config:settings edit.global_rules.rankings set value "$(global)"

# Per game
$data modify storage config:settings edit.rules_by_game.boat_race.rankings set value "$(boat_race)"
$data modify storage config:settings edit.rules_by_game.burn_survival.rankings set value "$(burn_survival)"
$data modify storage config:settings edit.rules_by_game.golf.rankings set value "$(golf)"
$data modify storage config:settings edit.rules_by_game.jump_league.rankings set value "$(jump_league)"
$data modify storage config:settings edit.rules_by_game.spleef.rankings set value "$(spleef)"
$data modify storage config:settings edit.rules_by_game.survive_warden.rankings set value "$(survive_warden)"
$data modify storage config:settings edit.rules_by_game.thimble.rankings set value "$(thimble)"
$data modify storage config:settings edit.rules_by_game.trident_shooting.rankings set value "$(trident_shooting)"

# Bookmark the rules page
execute unless data storage config:settings edit.global_rules{rankings: ""} run function config:events/edit/rules/keep_page {remove:  "games", add: "global"}
execute if data storage config:settings edit.global_rules{rankings: ""} run function config:events/edit/rules/keep_page     {remove: "global", add:  "games"}

