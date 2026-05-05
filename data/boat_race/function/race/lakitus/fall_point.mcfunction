# Config player
tag @s add br__has__lakitu
gamemode spectator @s

# Modify teleport_duration on fall entity
data modify entity @e[tag=br__fall_trg, distance=..1, limit=1] teleport_duration set value 10

# Specate fall point
spectate @e[tag=br__fall_trg, distance=..1, limit=1] @s

# Reset
scoreboard players reset @s br.tmp
