execute if score $config__count__handler config.val matches 2.. run tag @a[tag=!config__handler_fix] remove config__handler
execute if score $config__count__handler_fix config.val matches 2.. run tag @a[tag=!config__handler] remove config__handler_fix
