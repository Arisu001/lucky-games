execute unless predicate config:entity/player/item_in_hand/terrain/area run function config:hud/chat/terrain/set_pos/setblock with storage config:settings edit.terrain.setblock
function config:hud/chat/terrain/set_pos/fill with storage config:settings edit.terrain.fill

execute if score @s config.terrain matches 3 run function config:hud/chat/terrain/set_pos/clone with storage config:settings edit.terrain.clone
execute if score @s config.terrain matches 4 run function config:hud/chat/terrain/set_pos/fillbiome with storage config:settings edit.terrain.fillbiome
