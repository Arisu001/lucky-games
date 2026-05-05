# Same for all game
$data modify storage config:settings edit.global_rules.respawnable set value "$(global)"

# Per game
$data modify storage config:settings edit.rules_by_game.boat_race.respawnable set value "$(boat_race)"
$data modify storage config:settings edit.rules_by_game.burn_survival.respawnable set value "$(burn_survival)"
$data modify storage config:settings edit.rules_by_game.golf.respawnable set value "$(golf)"
$data modify storage config:settings edit.rules_by_game.jump_league.respawnable set value "$(jump_league)"
$data modify storage config:settings edit.rules_by_game.spleef.respawnable set value "$(spleef)"
$data modify storage config:settings edit.rules_by_game.survive_warden.respawnable set value "$(survive_warden)"
$data modify storage config:settings edit.rules_by_game.thimble.respawnable set value "$(thimble)"
$data modify storage config:settings edit.rules_by_game.trident_shooting.respawnable set value "$(trident_shooting)"

# Bookmark the rules page
execute unless data storage config:settings edit.global_rules{respawnable: ""} run function config:events/edit/rules/keep_page {remove:  "games", add: "global"}
execute if data storage config:settings edit.global_rules{respawnable: ""} run function config:events/edit/rules/keep_page     {remove: "global", add:  "games"}
