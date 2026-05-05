advancement revoke @s only config:tools/entity/remove remove
advancement revoke @s only config:tools/entity/toggle toggle
advancement revoke @s only config:tools/select/nbt_weaver component
advancement revoke @s only config:tools/modify/nbt_weaver edit
advancement revoke @s only config:tools/path path
advancement revoke @s only config:tools/path/start has_placed
advancement revoke @s only config:tools/path/checkpoint has_placed
advancement revoke @s only config:tools/path/finish has_placed
advancement revoke @s only config:tools/mode/boat has_placed
advancement revoke @s only config:tools/edit/terrain/pos_1 has_pos_1
advancement revoke @s only config:tools/edit/terrain/pos_2 has_pos_2

scoreboard players reset $config__right_click__tmp config.val
scoreboard players reset $config__waiting__right_click config.val
