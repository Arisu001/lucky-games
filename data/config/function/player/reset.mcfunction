tag @s remove config.
tag @s remove config__checkpoint
tag @s remove config__finish
tag @s remove config__start
tag @s remove config__boat

clear @a #config:config[custom_data={entity: {toggle: 1b}, config: 1b}]
clear @a #config:config[custom_data={entity: {remove: 1b}, config: 1b}]
clear @a #config:config[custom_data={tools: {nbt_weaver: 1b}, config: 1b}]
clear @a #config:config[custom_data={tools: {undo: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {start: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {checkpoint: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {finish: 1b}, config: 1b}]
clear @a #config:config[custom_data={mode: {boat: 1b}, config: 1b}]
