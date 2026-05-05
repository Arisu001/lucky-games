# Kill Lakitu
kill @e[tag=br__lakitu_trg, distance=..1]

# Modify property on vehicle
data modify entity @e[tag=br__mode, type=#global:vehicles, distance=..2.015, limit=1] NoGravity set value 0b

# Reset player
gamemode adventure @s
tag @s remove br__has__lakitu
scoreboard players reset @s br.tmp
