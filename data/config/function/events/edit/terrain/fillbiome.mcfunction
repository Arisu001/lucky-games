$data modify storage config:settings edit.terrain.fillbiome.biome set value $(biome)
$data modify storage config:settings edit.terrain.fillbiome.replace set value $(replace)

# Bookmark the rules page
scoreboard players set $config__edit__terrain__tmp config.val 4
