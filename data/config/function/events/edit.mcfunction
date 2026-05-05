# Reset the old retention pages
$scoreboard players reset @s config.$(remove_1)
$scoreboard players reset @s config.$(remove_2)
$scoreboard players reset @s config.$(remove_3)

# Copy the variable to stay on the same page
$scoreboard players operation @s config.$(add) = $config__edit__$(add)__tmp config.val
$scoreboard players reset $config__edit__$(add)__tmp config.val

# Add "has_fill" to display the lore
execute unless score @s config.terrain matches 1 unless score @s config.terrain matches 3 run tag @s add config__edit__terrain__has_fill
execute unless score @s config.terrain matches 2 unless score @s config.terrain matches 4 run tag @s remove config__edit__terrain__has_fill

# Add "no_clone" to display lore, but not for the "clone"
execute if score @s config.terrain matches 3 run tag @s remove config__edit__terrain__no_clone
execute unless score @s config.terrain matches 3 run tag @s add config__edit__terrain__no_clone

tag @s add config.
