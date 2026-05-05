$data modify storage config:settings edit.terrain.clone.from set value $(from)
$data modify storage config:settings edit.terrain.clone.from_dimension set value $(from_dimension)
$data modify storage config:settings edit.terrain.clone.to set value $(to)
$data modify storage config:settings edit.terrain.clone.to_dimension set value $(to_dimension)
$data modify storage config:settings edit.terrain.clone.mask_mode set value $(mask_mode)
$data modify storage config:settings edit.terrain.clone.mask_mode_strict set value $(mask_mode_strict)
$data modify storage config:settings edit.terrain.clone.block set value $(clone_block)
$data modify storage config:settings edit.terrain.clone.mode set value $(clone_mode)

# Bookmark the rules page
scoreboard players set $config__edit__terrain__tmp config.val 3
