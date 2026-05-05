$data modify storage config:settings edit.terrain.fill.block set value $(fill_block)
$data modify storage config:settings edit.terrain.fill.mode set value $(fill_mode)
$data modify storage config:settings edit.terrain.fill.replace_block set value $(replace_block)
$data modify storage config:settings edit.terrain.fill.replace_mode set value $(replace_mode)

# Bookmark the rules page
scoreboard players set $config__edit__terrain__tmp config.val 2
