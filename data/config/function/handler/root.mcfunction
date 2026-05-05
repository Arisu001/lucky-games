# ————— Category path —————
# Start  |  Checkpoint  |  Finish
execute if score @s config.path matches 1 run function config:player/inventory/menu {category: "path", type:      "start", value: 1, model: "wooden_axe"}
execute if score @s config.path matches 2 run function config:player/inventory/menu {category: "path", type: "checkpoint", value: 2, model: "wooden_axe"}
execute if score @s config.path matches 3 run function config:player/inventory/menu {category: "path", type:     "finish", value: 3, model: "wooden_axe"}

# ————— Categorie mode —————
# Kart  |  Boat  |  Runner
execute if score @s config.mode matches 1 run function config:player/inventory/menu {category: "mode", type:   "kart", value: 1, model:    "minecart"}
execute if score @s config.mode matches 2 run function config:player/inventory/menu {category: "mode", type:   "boat", value: 2, model:    "oak_boat"}
execute if score @s config.mode matches 3 run function config:player/inventory/menu {category: "mode", type: "runner", value: 3, model: "player_head"}

# ————— Categorie terrain —————
# Kart  |  Boat  |  Runner
execute if score @s config.terrain matches 1 run function config:player/inventory/menu {category: "terrain", type:  "setblock", value: 1, model: "wooden_axe"}
execute if score @s config.terrain matches 2 run function config:player/inventory/menu {category: "terrain", type:      "fill", value: 2, model: "wooden_axe"}
execute if score @s config.terrain matches 3 run function config:player/inventory/menu {category: "terrain", type:     "clone", value: 3, model: "wooden_axe"}
execute if score @s config.terrain matches 4 run function config:player/inventory/menu {category: "terrain", type: "fillbiome", value: 4, model: "wooden_axe"}


function config:player/inventory
function config:actions
