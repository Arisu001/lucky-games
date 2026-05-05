# Cursor
tp @e[tag=config__cursor_trg] ~ 319 ~ ~ ~
kill @e[tag=config__cursor_trg]
summon shulker ~ ~ ~ {Tags: ["config__cursor_trg", "config"], Team: "config__bad", Silent: 1b, Invulnerable: 1b, NoAI: 1b, active_effects: [{id: "invisibility", amplfier: 128, duration: -1, show_particles: 0b}, {id: "glowing", amplfier: 128, duration: -1, show_particles: 0b}]}

# Reset player
tag @s remove config__target__start
tag @s remove config__target__checkpoint
tag @s remove config__target__finish
tag @s remove config__target__path
tag @s add config__target.
