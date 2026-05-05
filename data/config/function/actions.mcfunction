# Raycast
scoreboard players set $config__ray config.val 0
execute anchored eyes run function config:raycast/step
execute unless predicate config:entity/player/item_in_hand/toggle unless predicate config:entity/player/item_in_hand/nbt_weaver unless predicate config:entity/player/item_in_hand/path_and_terrain unless predicate config:entity/player/item_in_hand/mode/kart unless predicate config:entity/player/item_in_hand/mode/boat unless predicate config:entity/player/item_in_hand/mode/runner unless predicate config:entity/player/item_in_hand/remove run function config:raycast/reset

# Player cursor
execute if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=config__cursor_trg] if entity @e[tag=config__trg, distance=..1.5] run function config:player/cursor
execute if predicate config:entity/player/item_in_hand/terrain at @e[tag=config__cursor_trg] run function config:player/cursor
execute unless predicate config:entity/player/item_in_hand/nbt_weaver unless predicate config:entity/player/item_in_hand/terrain run function config:player/cursor/reset
execute at @e[tag=config__cursor_trg] unless entity @e[tag=config__trg, distance=..1.5] unless predicate config:entity/player/item_in_hand/terrain run function config:player/cursor/reset

# Wait left/right-click
execute if entity @s[advancements={config:tools/entity/toggle=true}] run scoreboard players set $config__waiting__right_click config.val 1
execute if entity @s[advancements={config:tools/entity/remove=true}] run scoreboard players set $config__waiting__right_click config.val 1
execute if entity @s[advancements={config:tools/select/nbt_weaver=true}] run scoreboard players set $config__waiting__right_click config.val 1
execute if entity @s[advancements={config:tools/modify/nbt_weaver=true}] run scoreboard players set $config__waiting__right_click config.val 1
execute if entity @s[advancements={config:tools/path=true}] run scoreboard players set $config__waiting__right_click config.val 1
execute if entity @s[advancements={config:tools/mode/boat=true}] run scoreboard players set $config__waiting__right_click config.val 1
execute if entity @s[advancements={config:tools/edit/terrain/pos_1=true}] run scoreboard players set $config__waiting__right_click config.val 1
execute if entity @s[advancements={config:tools/edit/terrain/pos_2=true}] run scoreboard players set $config__waiting__right_click config.val 1
execute if score $config__waiting__right_click config.val matches 1 run scoreboard players add $config__right_click__tmp config.val 1
execute if score $config__right_click__tmp config.val matches 3.. run function config:events/reset

# Double right-click
execute if score $config__double__right_click config.val matches 1 run scoreboard players add $config__double__right_click__tmp config.val 1
execute if score $config__double__right_click__tmp config.val matches 3.. run function config:events/uninstall/preset
execute if score $config__double__right_click__tmp config.val matches 10.. unless score $config__double__right_click config.val matches 2 run function config:events/uninstall/cancel

# ————— Wrong place —————
# ————— Total —————
# Path
execute store result score $config__count__start config.val if entity @e[tag=config__start__race]
execute store result score $config__count__checkpoint config.val if entity @e[tag=config__checkpoint__race]
execute store result score $config__count__finish config.val if entity @e[tag=config__finish__race]
execute if score $config__count__start config.val matches 1 if score $config__count__finish config.val matches 1 run function config:actions/confirm/preset

# Mode
execute store result score $config__count__kart config.val if entity @e[tag=config__kart__race]
execute store result score $config__count__boat config.val if entity @e[tag=config__boat__race]
execute store result score $config__count__runner config.val if entity @e[tag=config__runner__race]

# Terrain: pos
execute store result score $config__count__fill config.val if entity @e[tag=config__fill]
execute store result score $config__count__clone config.val if entity @e[tag=config__clone]
execute store result score $config__count__fillbiome config.val if entity @e[tag=config__fillbiome]

# ————— Wrong place —————
# Enable player
scoreboard players enable @s config__Properties
scoreboard players enable @s config__Path
scoreboard players enable @s config__Mode
scoreboard players enable @s config__Toggle
execute if score @s config__Properties matches 1 run function config:hud/chat/properties
execute if score @s config__Path matches 1.. run function config:events/path
execute if score @s config__Mode matches 1.. run function config:events/mode
scoreboard players set @s config__Properties 0
scoreboard players set @s config__Path 0
scoreboard players set @s config__Mode 0

# ————— Wrong place —————
# ————— DIALOGS —————
# Ghost
execute if data storage config:settings toggle{ghost: "enabled"} run dialog show @s[tag=!config__ghost_properties] global:menu/games/boat_race/ghost/properties
execute if data storage config:settings toggle{ghost: "enabled"} run tag @s add config__ghost_properties
execute unless data storage config:settings toggle{ghost: "enabled"} run tag @s remove config__ghost_properties

# Edit rules
execute if score $config__edit__terrain__tmp config.val matches 1.. run function config:events/edit {remove_1: "path", remove_2: "mode", remove_3:   "rules", add: "terrain"}
execute if score $config__edit__rules__tmp config.val matches 1.. run function config:events/edit   {remove_1: "path", remove_2: "mode", remove_3: "terrain", add:   "rules"}

execute if data storage config:settings edit.terrain.fill.x1 if data storage config:settings edit.terrain.fill.x2 if data storage config:settings edit.terrain.fill{mode: "replace"} run function config:events/edit/terrain/mode/fill/replace with storage config:settings edit.terrain.fill
execute if data storage config:settings edit.terrain.fill.x1 if data storage config:settings edit.terrain.fill.x2 unless data storage config:settings edit.terrain.fill{mode: "replace"} run function config:events/edit/terrain/mode/fill/no_replace with storage config:settings edit.terrain.fill
