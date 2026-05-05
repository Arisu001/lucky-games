function config:debug/root


execute unless score $config__root__handler config.val matches 1 run function config:config/new_handler
execute if entity @s[tag=config__handler] run function config:handler/root
