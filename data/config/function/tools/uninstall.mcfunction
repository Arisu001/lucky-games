function config:hud/chat/datapack_uninstalled


kill @e[tag=config, type=#config:__class]

# Remove all sc oreboard
scoreboard objectives remove config.const
scoreboard objectives remove config.tmp
scoreboard objectives remove config.val
scoreboard objectives remove config.id
scoreboard objectives remove config.toggle__start
scoreboard objectives remove config.toggle__checkpoint
scoreboard objectives remove config.toggle__finish
scoreboard objectives remove config.path
scoreboard objectives remove config.mode
scoreboard objectives remove config.terrain
scoreboard objectives remove config.rules
scoreboard objectives remove config__Properties
scoreboard objectives remove config__Path
scoreboard objectives remove config__Mode
scoreboard objectives remove config__Toggle
scoreboard objectives remove br.const
scoreboard objectives remove br.tmp
scoreboard objectives remove br.val
scoreboard objectives remove br.rank
scoreboard objectives remove br.id
scoreboard objectives remove br.record
scoreboard objectives remove br.play_record
scoreboard objectives remove br.item__pseudo
scoreboard objectives remove br.nb__item__pseudo
scoreboard objectives remove br.curr__time
scoreboard objectives remove br.curr__ms
scoreboard objectives remove br.curr__sec
scoreboard objectives remove br.curr__min
scoreboard objectives remove br.best__time
scoreboard objectives remove br.best__ms
scoreboard objectives remove br.best__sec
scoreboard objectives remove br.best__min
scoreboard objectives remove br.pos_x
scoreboard objectives remove br.pos_z
scoreboard objectives remove br.pos_ox
scoreboard objectives remove br.pos_oz
scoreboard objectives remove br.dx
scoreboard objectives remove br.dz
scoreboard objectives remove br.progress
scoreboard objectives remove br.sort

team remove config__bad
team remove config__good
team remove config__ghost

# Reset player
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
tag @a remove config__close

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

# Remove all storage
data remove storage config:settings start
data remove storage config:settings finish
data remove storage config:settings checkpoint
data remove storage config:settings kart
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


# Disable datapack
datapack disable "file/lucky_games"
datapack disable "file/master-lucky_games"
datapack disable "file/main-lucky_games"
