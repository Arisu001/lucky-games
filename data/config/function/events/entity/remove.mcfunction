# Copy id
execute at @e[tag=config__cursor_trg] run scoreboard players operation $config__deleted config.val = @e[tag=config__trg, type=#config:__class, distance=..0.2] config.id

# ————— Update —————
# Start  |  Checkpoint  |  Finish
execute at @e[tag=config__cursor_trg] if entity @e[tag=config__start__race, distance=..1.5] run function config:events/entity/remove/new_id      {type: "start",      name: "START",      color: "green"}
execute at @e[tag=config__cursor_trg] if entity @e[tag=config__checkpoint__race, distance=..1.5] run function config:events/entity/remove/new_id {type: "checkpoint", name: "CHECKPOINT", color:  "gold"}
execute at @e[tag=config__cursor_trg] if entity @e[tag=config__finish__race, distance=..1.5] run function config:events/entity/remove/new_id     {type: "finish",     name: "FINISH",     color:   "red"}

# Boat
execute at @e[tag=config__cursor_trg] if entity @e[tag=config__boat__race, distance=..1.5] run function config:events/entity/remove/new_id       {type: "boat",   name: "", color: ""}

# Kill
execute at @e[tag=config__cursor_trg] run kill @e[tag=config__trg, type=#config:__class, distance=..0.2]
