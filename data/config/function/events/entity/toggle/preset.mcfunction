# Copy var entity
$execute as @e[tag=config__$(type)__race] run scoreboard players add @s config.val 1
$scoreboard players operation @s config.toggle__$(type) = @e[tag=config__$(type)__race] config.val

# ————— Toggle hide —————
# Start  |  Checkpoint  |  Finish
execute if entity @e[scores={config.val=2..}, tag=config__start__race, distance=..1.5] run function config:events/entity/toggle/visibility        {remove_1: "checkpoint", remove_2: "finish", add:      "start", scale: 0.0, particle: "reverse_portal", event: "deactivate"}
execute if entity @e[scores={config.val=2..}, tag=config__checkpoint__race, distance=..1.5] run function config:events/entity/toggle/visibility   {remove_1: "start",      remove_2: "finish", add: "checkpoint", scale: 0.0, particle: "reverse_portal", event: "deactivate"}
execute if entity @e[scores={config.val=2..}, tag=config__finish__race, distance=..1.5] run function config:events/entity/toggle/visibility       {remove_1: "checkpoint", remove_2: "start",  add:     "finish", scale: 0.0, particle: "reverse_portal", event: "deactivate"}


# ————— Toggle visible —————
# Start  |  Checkpoint  |  Finish
execute if entity @e[scores={config.val=1}, tag=config__start__race, distance=..1.5] run function config:events/entity/toggle/visibility      {remove_1: "checkpoint", remove_2: "finish", add:      "start", scale: 2.0, particle: "glow", event: "activate"}
execute if entity @e[scores={config.val=1}, tag=config__checkpoint__race, distance=..1.5] run function config:events/entity/toggle/visibility {remove_1: "start",      remove_2: "finish", add: "checkpoint", scale: 2.0, particle: "glow", event: "activate"}
execute if entity @e[scores={config.val=1}, tag=config__finish__race, distance=..1.5] run function config:events/entity/toggle/visibility     {remove_1: "checkpoint", remove_2: "start",  add:     "finish", scale: 2.0, particle: "glow", event: "activate"}
