# Lakitu
execute if block ~ ~-.5 ~ black_concrete_powder unless entity @e[tag=br__fall_trg, distance=..1] run summon item_display ~ ~1 ~ {Tags: ["br__fall_trg", "br"], item: {}, teleport_duration: 0}
execute if block ~ ~-.5 ~ black_concrete_powder unless entity @e[tag=br__lakitu_trg, distance=..2.015] run summon item_display ~ ~2 ~ {Tags: ["br__lakitu_trg", "br"], item: {}, teleport_duration: 10}

# Modify rotation[0] on fall entity
data modify entity @e[tag=br__fall_trg, distance=..1, limit=1] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=br__lakitu_trg, distance=..2.015, limit=1] Rotation[0] set from entity @s Rotation[0]

# Fall point
execute if entity @e[tag=br__lakitu_trg, distance=..2.015] run scoreboard players add @s br.tmp 1 
execute if score @s[tag=!br__has__lakitu] br.tmp matches 1.. run function boat_race:race/lakitus/fall_point

# Animation
execute at @e[tag=br__fall_trg, distance=..1] unless entity @e[tag=br__lakitu_trg, distance=..0.1] run scoreboard players add @s br.tmp 1
execute if score @s br.tmp matches 10.. at @e[tag=br__fall_trg, distance=..1] run function boat_race:race/lakitus/animation

# Teleport to the last checkpoint
execute unless entity @e[tag=br__fall_trg, distance=..1] as @e[tag=config__path] if score @e[tag=br__lakitu_trg, distance=..0.1, limit=1] br.id = @s config.id run tp @e[tag=br__lakitu_trg, distance=..0.1] @s[tag=config__path, tag=!config__finish__race]
execute unless entity @e[tag=br__fall_trg, distance=..1] as @e[tag=br__mode, type=#global:vehicles, distance=..1] run tp @s @e[tag=br__lakitu_trg, limit=1]

# Reset
execute at @e[tag=br__lakitu_trg, distance=..0.1] if entity @e[tag=config__path, distance=..0.1] run scoreboard players add @s br.tmp 1
execute if score @s br.tmp matches 10.. run function boat_race:race/lakitus/reset
execute if score @s[tag=br__has__lakitu] br.tmp matches ..10 unless entity @e[tag=br__lakitu_trg, distance=..2.015] run function boat_race:race/lakitus/reset

# ————— Wrong place —————
# Only player in vehicle
execute unless predicate boat_race:entity/player/vehicle/mode as @e[tag=br__mode, type=#global:vehicles] run ride @p[gamemode=!spectator] mount @s

# TO do = choose block death 
