# Copy name
execute at @e[tag=config__cursor_trg] run data modify storage config:settings entity.type set from entity @e[tag=config__trg, type=#config:__class, distance=..1.5, limit=1] CustomName.text

execute at @e[tag=config__cursor_trg] if entity @e[tag=config__trg, type=#config:__class, distance=..1.5] run function config:events/entity/toggle/preset with storage config:settings entity
