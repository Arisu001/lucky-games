# Fill
execute store result score $config__edit__terrain__fill_x1 config.val run data get storage config:settings edit.terrain.fill.x1 1
execute store result score $config__edit__terrain__fill_y1 config.val run data get storage config:settings edit.terrain.fill.y1 1
execute store result score $config__edit__terrain__fill_z1 config.val run data get storage config:settings edit.terrain.fill.z1 1
execute store result score $config__edit__terrain__fill_x2 config.val run data get storage config:settings edit.terrain.fill.x2 1
execute store result score $config__edit__terrain__fill_y2 config.val run data get storage config:settings edit.terrain.fill.y2 1
execute store result score $config__edit__terrain__fill_z2 config.val run data get storage config:settings edit.terrain.fill.z2 1

function config:maths/calc with storage config:settings edit.terrain.fill


$execute if entity @s[advancements={config:tools/edit/terrain/pos_1=true}] run tellraw @s [{text: "", color: "light_purple"}, {text: "[", color: "white"}, {text: "$(name)", color: "$(color)"}, {text: "] ", color: "white"}, {text: "> ", color: "yellow"}, "Pos 1 set to ($(x1), $(y1), $(z1))"]

$execute if entity @s[advancements={config:tools/edit/terrain/pos_2=true}] run tellraw @s [{text: "", color: "light_purple"}, {text: "[", color: "white"}, {text: "$(name)", color: "$(color)"}, {text: "] ", color: "white"}, {text: "> ", color: "yellow"}, "Pos 2 set to ($(x2), $(y2), $(z2))"]

$execute unless score $config__edit__terrain__fill_x1 config.val = $config__edit__terrain__fill_x2 config.val unless score $config__edit__terrain__fill_x2 config.val matches 0 unless score $config__edit__terrain__fill_x1 config.val matches 0 run tellraw @s [{text: "", color: "light_purple"}, {text: "[", color: "white"}, {text: "$(name)", color: "$(color)"}, {text: "] ", color: "white"}, {text: "> ", color: "yellow"}, "Filled ", {score: {name: "$config__edit__terrain__fill__calc_total", objective: "config.val"}}, " blocks"]
