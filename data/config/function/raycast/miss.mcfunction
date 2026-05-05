function config:hud/screen/too_far

playsound entity.villager.no master @s ~ ~ ~ 1000 .33 0
particle dust{color: [0.0, 0.0, 0.0], scale: 1} ~ ~ ~ 1 1 1 .1 100 force @s

scoreboard players set $config__ray config.val 0
