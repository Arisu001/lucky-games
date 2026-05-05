# Mode = "properties"
data modify storage config:settings tools.mode set value "Properties"

scoreboard players add $config__entity__component config.val 1

execute if score $config__entity__component config.val matches 1 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=config__cursor_trg] run data modify storage config:settings tools.select.nbt_weaver.component set from entity @e[tag=config__path, distance=..1.5, limit=1] CustomName.extra[0]
execute if score $config__entity__component config.val matches 2 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=config__cursor_trg] run data modify storage config:settings tools.select.nbt_weaver.component set from entity @e[tag=config__path, distance=..1.5, limit=1] CustomName.extra[1]
execute if score $config__entity__component config.val matches 3 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=config__cursor_trg] run data modify storage config:settings tools.select.nbt_weaver.component set from entity @e[tag=config__path, distance=..1.5, limit=1] CustomName.extra[2]
execute if score $config__entity__component config.val matches 4 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=config__cursor_trg] run data modify storage config:settings tools.select.nbt_weaver.component set from entity @e[tag=config__path, distance=..1.5, limit=1] CustomName.extra[3]
execute if score $config__entity__component config.val matches 5 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=config__cursor_trg] run data modify storage config:settings tools.select.nbt_weaver.component set from entity @e[tag=config__path, distance=..1.5, limit=1] CustomName.extra[4]
execute if score $config__entity__component config.val matches 6 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=config__cursor_trg] run data modify storage config:settings tools.select.nbt_weaver.component set from entity @e[tag=config__path, distance=..1.5, limit=1] CustomName.extra[5]

execute if score $config__entity__component config.val matches 6.. run scoreboard players set $config__entity__component config.val 0
