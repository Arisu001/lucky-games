scoreboard objectives add config.const dummy
scoreboard objectives add config.tmp dummy
scoreboard objectives add config.val dummy
scoreboard objectives add config.id dummy
scoreboard objectives add config.toggle__start dummy
scoreboard objectives add config.toggle__checkpoint dummy
scoreboard objectives add config.toggle__finish dummy
scoreboard objectives add config.path dummy
scoreboard objectives add config.mode dummy
scoreboard objectives add config.terrain dummy
scoreboard objectives add config.rules dummy
scoreboard objectives add config__Properties trigger
scoreboard objectives add config__Path trigger
scoreboard objectives add config__Mode trigger
scoreboard objectives add config__Toggle trigger


execute as @a run schedule function config:init/datapack 5t
