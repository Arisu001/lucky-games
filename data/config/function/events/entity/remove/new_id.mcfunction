# New id
$execute as @e[tag=config__$(type)_done__race] if score @s config.id > $config__deleted config.val run scoreboard players remove @s config.id 1
$execute as @e[tag=config__$(type)_done__race] if score @s config.id >= $config__deleted config.val run data merge entity @s {text: [{text: "$(name)", color: "$(color)", bold: true}, " ", {score: {name: "@s", objective: "config.id"}, color: "yellow"}]}

$execute at @e[tag=config__$(type)__race, distance=..1.5] run particle dust{color: [1.0, 0.0, 0.0], scale: 1.0} ~ ~ ~ .15 100 .15 .1 1000 force @s

stopsound @s master block.beacon.deactivate
playsound block.beacon.deactivate master @s ~ ~ ~ 1000 2 0
