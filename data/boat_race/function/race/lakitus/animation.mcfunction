# Config player
gamemode spectator @s

# teleport fall point to Lakitu
tp @e[tag=br__fall_trg, distance=..1, limit=1] @e[tag=br__lakitu_trg, distance=..2.015, limit=1]

# Modify property and tp vehicle to Lakitu
data modify entity @e[tag=br__mode, type=#global:vehicles, distance=..2.015, limit=1] NoGravity set value 1b
tp @e[tag=br__mode, type=#global:vehicles, distance=..2.015] @e[tag=br__lakitu_trg, distance=..2.015, limit=1] 

# Spectate Lakitu
spectate @e[tag=br__lakitu_trg, distance=..0.1, limit=1] @s

# Copy id from the player
scoreboard players operation @e[tag=br__lakitu_trg, distance=..0.1] br.id = @s br.id

# Kill fall point
execute if entity @e[tag=br__lakitu_trg, distance=..0.1] run kill @e[tag=br__fall_trg, distance=..1]

# Reset
scoreboard players reset @s br.tmp
