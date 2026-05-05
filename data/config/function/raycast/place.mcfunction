# Only one start + finish & pos 1..3
execute if predicate config:entity/player/item_in_hand/path/start run kill @e[tag=config__start__race]
execute if predicate config:entity/player/item_in_hand/path/finish run kill @e[tag=config__finish__race]
execute if predicate config:entity/player/item_in_hand/terrain run kill @e[tag=config__fill]

# New entity
$execute unless score @s config.terrain matches 1.. unless entity @e[tag=config__$(type)__race, tag=!config__mode, distance=..5] run summon $(entity) ~.5 ~$(y) ~.5 {Tags: ["config__$(type)__race", "config__$(type)", "config__trg", "config__$(category)", "config"], $(display): [{text: "$(name)", color: "$(color)", bold: true}], CustomName: ["$(tag)", "$(component_1)", "$(component_2)", "$(component_3)", "$(component_4)", "$(component_5)", "$(component_6)"], view_range: $(distance), background: 0, shadow: 1b, billboard: "vertical", interpolation_duration: 5}
$execute if score @s config.terrain matches 1.. run summon $(entity) ~.5 ~$(y) ~.5 {Tags: ["config__$(type)", "config__$(category)", "config"], $(display): {text: "$(name)", color: "$(color)"}, CustomName: ["$(tag)"], view_range: $(distance)}

# Modifiy: Rotation  |  Scale
$execute as @e[tag=config__$(type)__race, tag=!config__$(type)_done__race] run data modify entity @s Rotation[0] set from entity @a[tag=config__handler, limit=1] Rotation[0]
$execute as @e[tag=config__$(type)__race] run data modify entity @s transformation.scale[] set value 2.0f

# Update IDs
$execute store result storage config:settings $(type).id int 1 run scoreboard players get $config__count__$(type) config.val
$execute store result score $config__$(type)__id config.val run data get storage config:settings $(type).id

# Save the location and name of the terrain category by entity
$execute as @e[tag=config__terrain] run data modify storage config:settings edit.terrain.$(type).name set from entity @s text.text
$execute as @e[tag=config__terrain] run data modify storage config:settings edit.terrain.$(type).color set from entity @s text.color
$execute as @e[tag=config__terrain] run data modify storage config:settings edit.terrain.$(type).type set from entity @s CustomName
$execute if entity @s[advancements={config:tools/edit/terrain/pos_2=false}] as @e[tag=config__terrain] store result storage config:settings edit.terrain.$(type).x1 double 1 run data get entity @s Pos[0]
$execute if entity @s[advancements={config:tools/edit/terrain/pos_2=false}] as @e[tag=config__terrain] store result storage config:settings edit.terrain.$(type).y1 double 1 run data get entity @s Pos[1]
$execute if entity @s[advancements={config:tools/edit/terrain/pos_2=false}] as @e[tag=config__terrain] store result storage config:settings edit.terrain.$(type).z1 double 1 run data get entity @s Pos[2]
$execute if entity @s[advancements={config:tools/edit/terrain/pos_2=true}] as @e[tag=config__terrain] store result storage config:settings edit.terrain.$(type).x2 double 1 run data get entity @s Pos[0]
$execute if entity @s[advancements={config:tools/edit/terrain/pos_2=true}] as @e[tag=config__terrain] store result storage config:settings edit.terrain.$(type).y2 double 1 run data get entity @s Pos[1]
$execute if entity @s[advancements={config:tools/edit/terrain/pos_2=true}] as @e[tag=config__terrain] store result storage config:settings edit.terrain.$(type).z2 double 1 run data get entity @s Pos[2]

# Notif
$execute at @e[tag=config__$(type)__race, tag=!config__$(type)_done__race] run particle wax_off ~ ~ ~ .15 100 .15 .1 1000 force @s
stopsound @s master block.beacon.activate
execute unless entity @e[tag=config__terrain] run playsound block.beacon.activate master @s ~ ~ ~ 1000 2 0

# ————— ID + Rename —————
# Add new id
$execute if predicate config:entity/player/item_in_hand/$(category)/$(type) run scoreboard players add $config__$(type)__id config.val 1

# Limit = 0 applies only to the start + finish & terrain
execute if score $config__start__id config.val matches 1.. run scoreboard players set $config__start__id config.val 0
execute if score $config__finish__id config.val matches 1.. run scoreboard players set $config__finish__id config.val 0

# Store IDs with their own names
$execute as @e[tag=config__$(type)] unless score @s config.id matches 1.. run scoreboard players operation @s config.id = $config__$(type)__id config.val
$execute as @e[tag=config__$(type)] store result storage config:settings $(type).id int 1 run scoreboard players get @s config.id

# Rename using their own IDs
$execute as @e[tag=config__$(type), tag=!config__$(type)_done__race, tag=!config__start__race, tag=!config__finish__race, tag=!config__terrain] if score @s config.id matches 1.. run data merge entity @s {Tags: ["config__$(type)__race", "config__$(type)_done__race", "config__$(category)", "config__trg", "config"], $(display): [{text: "$(name)", color: "$(color)", bold: true}, " ", {score: {name: "@s", objective: "config.id"}, color: "yellow"}]}

# Init toggle
$scoreboard players set @e[tag=config__$(tag)__race, tag=!config__mode] config.val 1
$scoreboard players operation @s config.toggle__$(tag) = @e[tag=config__$(tag)__race, tag=!config__mode] config.val

# Send information
execute if entity @e[tag=config__setblock] run function config:hud/chat/terrain  {string:  "Setblock", color:        "white"}
execute if entity @e[tag=config__fill] run function config:hud/chat/terrain      {string:      "Fill", color:        "green"}
execute if entity @e[tag=config__clone] run function config:hud/chat/terrain     {string:     "Clone", color: "light_purple"}
execute if entity @e[tag=config__fillbiome] run function config:hud/chat/terrain {string: "Fillbiome", color:   "dark_green"}

# Kill terrain after place
kill @e[tag=config__terrain]
