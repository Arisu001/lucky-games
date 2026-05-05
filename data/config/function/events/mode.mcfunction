playsound block.stone_button.click_on master @s ~ ~ ~ 1000 0 0

tag @s add config.

# Reset & copy the variable to stay on the same page
scoreboard players reset @s config.path
scoreboard players reset @s config.terrain
scoreboard players reset @s config.rules
scoreboard players operation @s config.mode = @s config__Mode
