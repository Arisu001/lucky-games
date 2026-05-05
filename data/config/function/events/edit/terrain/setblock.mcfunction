$data modify storage config:settings edit.terrain.setblock.block set value $(block)
$data modify storage config:settings edit.terrain.setblock.replace_mode set value $(replace_mode)

# Bookmark the rules page
scoreboard players set $config__edit__terrain__tmp config.val 1
