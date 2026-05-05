# Cursor
tp @e[tag=config__cursor_trg] ~ 319 ~ ~ ~
kill @e[tag=config__cursor_trg]
summon shulker ~ ~ ~ {Tags: ["config__cursor_trg", "config"], Team: "config__good", Silent: 1b, Invulnerable: 1b, NoAI: 1b, active_effects: [{id: "invisibility", amplfier: 128, duration: -1, show_particles: 0b}, {id: "glowing", amplfier: 128, duration: -1, show_particles: 0b}]}

function config:player/position

# ————— Place —————
# Path = Start  |  Checkpoint  |  Fisnish
execute if entity @s[advancements={config:tools/path/start=true}] run function config:raycast/place      {y: 3, entity: "text_display", type:      "start", category: "path", display: "text", name:      "START", tag:      "start", color: "green", distance: 1.0f, component_1: "shadow", component_2: "see_through", component_3: "scale", component_4: "billboard", component_5: "default_background", component_6: "view_range"}
execute if entity @s[advancements={config:tools/path/checkpoint=true}] run function config:raycast/place {y: 3, entity: "text_display", type: "checkpoint", category: "path", display: "text", name: "CHECKPOINT", tag: "checkpoint", color:  "gold", distance: 1.0f, component_1: "shadow", component_2: "see_through", component_3: "scale", component_4: "billboard", component_5: "default_background", component_6: "view_range"}
execute if entity @s[advancements={config:tools/path/finish=true}] run function config:raycast/place     {y: 3, entity: "text_display", type:     "finish", category: "path", display: "text", name:     "FINISH", tag:     "finish", color:   "red", distance: 1.0f, component_1: "shadow", component_2: "see_through", component_3: "scale", component_4: "billboard", component_5: "default_background", component_6: "view_range"}

# Mode = Kart  |  Boat  |  Runner
execute if entity @s[advancements={config:tools/mode/kart=true}] run function config:raycast/place   {y: 1.5, entity: "text_display", type:   "kart", category: "mode", display: "CustomName", name: "", tag: "", color: "gold", distance: 0.0f, component_1: "Rotation", component_2: "", component_3: "", component_4: "", component_5: "", component_6: ""}
execute if entity @s[advancements={config:tools/mode/boat=true}] run function config:raycast/place   {y: 1.5, entity: "text_display", type:   "boat", category: "mode", display: "CustomName", name: "", tag: "", color: "gold", distance: 0.0f, component_1: "Rotation", component_2: "", component_3: "", component_4: "", component_5: "", component_6: ""}
execute if entity @s[advancements={config:tools/mode/runner=true}] run function config:raycast/place {y: 1.5, entity: "text_display", type: "runner", category: "mode", display: "CustomName", name: "", tag: "", color: "gold", distance: 0.0f, component_1: "Rotation", component_2: "", component_3: "", component_4: "", component_5: "", component_6: ""}

# Terrain = Setblock  |  Fill  |  Clone  |  Fillbiome
execute if entity @s[advancements={config:tools/edit/terrain/pos_1=true}, scores={config.terrain=1}] run function config:raycast/place {y: 0, entity: "text_display", type: "setblock", category: "terrain", display: "text", name: "Setblock", tag: "setblock", color: "white", distance: 0.0f, component_1: "", component_2: "", component_3: "", component_4: "", component_5: "", component_6: ""}
execute if entity @s[advancements={config:tools/edit/terrain/pos_1=true}, scores={config.terrain=2}] run function config:raycast/place {y: 0, entity: "text_display", type:     "fill", category: "terrain", display: "text", name:     "Fill", tag:     "fill", color: "green", distance: 0.0f, component_1: "", component_2: "", component_3: "", component_4: "", component_5: "", component_6: ""}

execute if entity @s[advancements={config:tools/edit/terrain/pos_2=true}, scores={config.terrain=2}] run function config:raycast/place {y: 0, entity: "text_display", type:     "fill", category: "terrain", display: "text", name:     "Fill", tag: "fill", color: "green", distance: 0.0f, component_1: "", component_2: "", component_3: "", component_4: "", component_5: "", component_6: ""}
