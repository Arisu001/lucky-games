# Mode = "modify"
data modify storage config:settings tools.mode set value "Modify"

scoreboard players add $config__entity__modify config.val 1
execute store result storage config:settings tools.modify.nbt_weave.edit.shadow int 1 run scoreboard players get $config__entity__modify config.val

execute if score $config__entity__component config.val matches 1 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=config__cursor_trg] run data modify entity @e[tag=config__path, distance=..1.5, limit=1] see_through set from storage config:settings tools.modify.nbt_weave.edit.see_through
