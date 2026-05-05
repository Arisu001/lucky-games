# Invisible
execute store result storage config:inventory entity.toggle byte 1 run data get entity @s Inventory[0].components.minecraft:custom_data.entity.toggle 1
execute store result score $config__nb__item__entity_toggle config.val run clear @s paper[custom_data={entity: {toggle: 1b}, config: 1b}] 0
execute unless data storage config:inventory {entity: {toggle: 1b}} run item replace entity @s[tag=!config__target__path] hotbar.0 with paper[custom_data={entity: {toggle: 1b}, config: 1b}] 1
execute unless data storage config:inventory {entity: {toggle: 1b}} run item replace entity @s[tag=config__target__path] hotbar.0 with paper[custom_data={entity: {toggle: 1b}, config: 1b}] 1
execute if score $config__nb__item__entity_toggle config.val matches 2.. run clear @s paper[custom_data={entity: {toggle: 1b}, config: 1b}]
item modify entity @s[tag=config.] hotbar.0 config:entity/toggle

# NBT Weaver
execute store result storage config:inventory tools.nbt_weaver byte 1 run data get entity @s Inventory[1].components.minecraft:custom_data.tools.nbt_weaver 1
execute store result score $config__nb__item_tools__nbt_weaver config.val run clear @s paper[custom_data={tools: {nbt_weaver: 1b}, config: 1b}] 0
execute unless data storage config:inventory {tools: {nbt_weaver: 1b}} run item replace entity @s[tag=config.] hotbar.1 with paper[custom_data={tools: {nbt_weaver: 1b}, config: 1b}, item_model="breeze_rod"] 1
execute if score $config__nb__item_tools__nbt_weaver config.val matches 2.. run clear @s paper[custom_data={tools: {nbt_weaver: 1b}, config: 1b}]
item modify entity @s[tag=config.] hotbar.1 config:entity/properties

# ————— Config path + mode & terrain —————
# Start  |  Checkpoint  |  Finish   +   Boat   &   Setblock  |  Fill  |  Clone  |  Fillbiome
$execute store result storage config:inventory $(category).$(type) byte 1 run data get entity @s Inventory[2].components.minecraft:custom_data.$(category).$(type) 1
$execute store result score $config__nb__item__$(category)_$(type) config.val run clear @s paper[custom_data={$(category): {$(type): 1b}, config: 1b}] 0
$execute unless data storage config:inventory {$(category): {$(type): 1b}} if score @s config.$(category) matches $(value) run item replace entity @s hotbar.3 with paper[custom_data={$(category): {$(type): 1b}, config: 1b}, item_model="$(model)"] 1
$execute if score $config__nb__item__$(category)_$(type) config.val matches 2.. run clear @s paper[custom_data={$(category): {$(type): 1b}, config: 1b}]
$item modify entity @s[tag=config.] hotbar.3 config:tools/menu/$(category)

# Undo
execute store result storage config:inventory tools.undo byte 1 run data get entity @s Inventory[4].components.minecraft:custom_data.tools.undo 1
execute store result score $config__nb__item_tools__undo config.val run clear @s spectral_arrow[custom_data={tools: {undo: 1b}, config: 1b}] 0
execute unless data storage config:inventory {tools: {undo: 1b}} run item replace entity @s[tag=config.] hotbar.5 with spectral_arrow[custom_data={tools: {undo: 1b}, config: 1b}] 1
execute if score $config__nb__item_tools__undo config.val matches 2.. run clear @s spectral_arrow[custom_data={tools: {undo: 1b}, config: 1b}]
item modify entity @s[tag=config.] hotbar.5 config:tools/menu/undo

# Remove
execute store result storage config:inventory entity.remove byte 1 run data get entity @s Inventory[5].components.minecraft:custom_data.entity.remove 1
execute store result score $config__nb__item__entity_remove config.val run clear @s paper[custom_data={entity: {remove: 1b}, config: 1b}] 0
execute unless data storage config:inventory {entity: {remove: 1b}} run item replace entity @s[tag=config.] hotbar.8 with paper[custom_data={entity: {remove: 1b}, config: 1b}, item_model="structure_void"] 1
execute if score $config__nb__item__entity_remove config.val matches 2.. run clear @s paper[custom_data={entity: {remove: 1b}, config: 1b}]
item modify entity @s[tag=config.] hotbar.8 config:entity/remove
