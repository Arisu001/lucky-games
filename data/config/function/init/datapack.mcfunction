function config:hud/chat/info_dialog

kill @e[tag=config, type=#config:__class]

scoreboard players reset * config.const
scoreboard players reset * config.tmp
scoreboard players reset * config.val
scoreboard players reset * config.toggle__start
scoreboard players reset * config.toggle__checkpoint
scoreboard players reset * config.toggle__finish
scoreboard players reset * config.path
scoreboard players reset * config.mode
scoreboard players reset * config.terrain
scoreboard players reset * config.rules
scoreboard players reset * config__Properties
scoreboard players reset * config__Path
scoreboard players reset * config__Mode
scoreboard players reset * config__Toggle

scoreboard players set %config__milliseconde config.const 20
scoreboard players set %config__seconde config.const 60
scoreboard players set %config__minute config.const 1200
scoreboard players set %config__hour config.const 72000
scoreboard players set %config__minus_one config.const -1

advancement revoke @a only config:tools/open open
advancement revoke @a only config:tools/uninstall datapack
advancement revoke @a only config:tools/undo undo 
advancement revoke @a only config:tools/path path
advancement revoke @a only config:tools/select/nbt_weaver component
advancement revoke @a only config:tools/modify/nbt_weaver edit
advancement revoke @a only config:tools/entity/remove remove
advancement revoke @a only config:tools/entity/toggle toggle
advancement revoke @a only config:tools/path/start has_placed
advancement revoke @a only config:tools/path/checkpoint has_placed
advancement revoke @a only config:tools/path/finish has_placed
advancement revoke @a only config:tools/mode/kart has_placed
advancement revoke @a only config:tools/mode/boat has_placed
advancement revoke @a only config:tools/mode/runner has_placed
advancement revoke @a only config:tools/edit/terrain/pos_1 has_pos_1
advancement revoke @a only config:tools/edit/terrain/pos_2 has_pos_2

team add config__bad
team add config__good
team add config__ghost
team modify config__bad color red
team modify config__good color green
team modify config__ghost color gray

tag @a remove config__disable
tag @a remove config__activate
tag @a remove config__ghost_properties
tag @a remove config.
tag @a remove config__confirm
tag @a remove config___edit__terrain__no_clone
tag @a remove config___edit__terrain__has_fill
tag @a remove config__target__start
tag @a remove config__target__checkpoint
tag @a remove config__target__finish
tag @a remove config__target__kart
tag @a remove config__target__boat
tag @a remove config__target__runner
tag @a remove config__target__path
tag @a remove config__target.
tag @a remove br__record__1
tag @a remove br__record__2
tag @a remove br__record__3
tag @a remove br__record__4
tag @a remove br__record__5
tag @a remove br__record__6
tag @a remove br__record__7
tag @a remove br__record__8
tag @a remove br__record__9
tag @a remove br__record__10
tag @a remove br__record__11
tag @a remove br__record__12
tag @a remove br__play_record__1
tag @a remove br__play_record__2
tag @a remove br__play_record__3
tag @a remove br__play_record__4
tag @a remove br__play_record__5
tag @a remove br__play_record__6
tag @a remove br__play_record__7
tag @a remove br__play_record__8
tag @a remove br__play_record__9
tag @a remove br__play_record__10
tag @a remove br__play_record__11
tag @a remove br__play_record__12
tag @a remove br__racer
tag @a remove br__has__lakitu
tag @a remove config__has__ghost
tag @a[tag=config__handler] add config__closed

team leave @a

clear @a #config:config[custom_data={tools: {settings: 1b}, config: 1b}]
clear @a #config:config[custom_data={tools: {nbt_weaver: 1b}, config: 1b}]
clear @a #config:config[custom_data={tools: {undo: 1b}, config: 1b}]
clear @a #config:config[custom_data={tools: {uninstall: 1b}, config: 1b}]
clear @a #config:config[custom_data={entity: {toggle: 1b}, config: 1b}]
clear @a #config:config[custom_data={entity: {remove: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {start: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {checkpoint: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {finish: 1b}, config: 1b}]
clear @a #config:config[custom_data={mode: {kart: 1b}, config: 1b}]
clear @a #config:config[custom_data={mode: {boat: 1b}, config: 1b}]
clear @a #config:config[custom_data={mode: {runner: 1b}, config: 1b}]
clear @a #config:config[custom_data={terrain: {setblock: 1b}, config: 1b}]
clear @a #config:config[custom_data={terrain: {fill: 1b}, config: 1b}]
clear @a #config:config[custom_data={terrain: {clone: 1b}, config: 1b}]
clear @a #config:config[custom_data={terrain: {fillbiome: 1b}, config: 1b}]
clear @a #config:config[custom_data={pseudo: 1b, config: 1b}]

data remove storage config:settings start
data remove storage config:settings finish
data remove storage config:settings checkpoint
data remove storage config:settings boat
data remove storage config:settings setblock
data remove storage config:settings fill
data remove storage config:settings clone
data remove storage config:settings fillbiome
data remove storage config:settings edit
data remove storage config:settings ghost
data remove storage config:settings toggle
data remove storage config:settings entity
data remove storage config:settings tools
data remove storage config:inventory mode
data remove storage config:inventory path
data remove storage config:inventory entity
data remove storage config:inventory terrain
data remove storage config:inventory tools
data remove storage config:player rot
data remove storage br:racer id
data remove storage br:racer sort
