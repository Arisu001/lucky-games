# Init
scoreboard players add $config__ray config.val 1

# Max
execute if score $config__ray config.val matches ..1000 positioned ^ ^ ^.25 if block ~ ~ ~ air run function config:raycast/step

# Place  |  Remove  |  Visible  |  Properties
execute unless score $config__right_click__tmp config.val matches 1.. if score $config__ray config.val matches ..150 positioned ^ ^ ^.25 unless block ~ ~ ~ air align xyz run function config:raycast/place/preset
execute unless predicate config:entity/player/item_in_hand/path_and_terrain as @e[tag=config__cursor_trg] unless score $config__right_click__tmp config.val matches 1.. if score $config__ray config.val matches ..150 positioned ^ ^ ^.25 align xyz run function config:raycast/target_entity/preset
execute if predicate config:entity/player/item_in_hand/terrain/setblock as @e[tag=config__cursor_trg] unless score $config__right_click__tmp config.val matches 1.. if score $config__ray config.val matches ..150 positioned ^ ^-.25 ^.25 unless block ~ ~ ~ air align xyz run tp @s ~.5 ~1 ~.5

# Too far  |  missing entity
execute as @s[advancements={config:tools/path/start=true}] unless score $config__right_click__tmp config.val matches 1.. if score $config__ray config.val matches 151.. run function config:raycast/miss
execute if score $config__ray config.val matches 151.. positioned ^ ^ ^.25 unless block ~ ~ ~ air align xyz run function config:raycast/cannot
execute unless predicate config:entity/player/item_in_hand/path_and_terrain unless predicate config:entity/player/item_in_hand/mode/kart unless predicate config:entity/player/item_in_hand/mode/boat unless predicate config:entity/player/item_in_hand/mode/runner if score $config__ray config.val matches ..150 positioned ^ ^ ^.25 unless block ~ ~ ~ air at @e[tag=config__cursor_trg] unless entity @e[tag=config__trg, type=#config:__class, distance=..1.5] run function config:raycast/cannot
