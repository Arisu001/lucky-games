clear @s compass[custom_data={tools: {settings: 1b}, config: 1b}]

playsound block.stone_button.click_on master @s ~ ~ ~ 1000 2 0

scoreboard players set @s config__Properties 0
scoreboard players set @s config__Path 0
scoreboard players set @s config__Mode 0

execute unless score @s config.path matches 1.. unless score @s config.mode matches 1.. unless score @s config.terrain matches 1.. unless score @s config.rules matches 1.. run dialog show @s global:config
execute if score @s config.path matches 1.. run dialog show @s global:menu/games/boat_race/path
execute if score @s config.mode matches 1.. run dialog show @s global:menu/games/boat_race/mode
execute if score @s config.terrain matches 1.. run dialog show @s global:menu/edit/terrain
execute if score @s config.rules matches 1.. run dialog show @s global:menu/edit/global_rules

advancement revoke @s only config:tools/open open
