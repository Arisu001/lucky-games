$execute as @e[tag=config__$(add)__race] run data modify entity @s transformation.scale[] set value $(scale)

$execute at @e[tag=config__$(add)__race] run particle $(particle) ~ ~ ~ .15 100 .15 .1 1000 force @s

stopsound @s master block.conduit.activate
stopsound @s master block.conduit.deactivate
$playsound block.conduit.$(event) master @s ~ ~ ~ 1000 2 0

$tag @s remove config__target__$(remove_1)
$tag @s remove config__target__$(remove_2)
tag @s remove config__target.
$tag @s add config__target__$(add)

$execute as @e[tag=config__$(add)__race] if score @s config.val matches 2.. run scoreboard players set @s config.val 0
