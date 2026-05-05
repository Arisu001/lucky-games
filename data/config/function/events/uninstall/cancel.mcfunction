function config:hud/chat/uninstall_canceled


advancement revoke @s only config:tools/uninstall datapack

particle dust{color: [0.0, 0.0, 0.0], scale: 1.0} ~ ~ ~ 1 1 1 .1 1000 force @s
playsound entity.villager.no master @s ~ ~ ~ 1000 .33 0

scoreboard players reset $config__double__right_click config.val
scoreboard players reset $config__double__right_click__tmp config.val
