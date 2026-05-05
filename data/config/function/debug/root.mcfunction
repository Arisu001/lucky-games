# Handler
execute store result score $config__count__handler config.val if entity @a[tag=config__handler]
execute store result score $config__count__handler_fix config.val if entity @a[tag=config__handler_fix]

execute if score $config__count__handler config.val matches 2.. run function config:error/admin_1001
execute if score $config__count__handler_fix config.val matches 2.. run function config:error/admin_1001
