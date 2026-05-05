team join config__good @e[tag=config__cursor_trg]
tp @s ~ ~ ~ ~ ~

$tag @a[tag=config__handler, limit=1] remove config__target__$(remove_1)
$tag @a[tag=config__handler, limit=1] remove config__target__$(remove_2)
$tag @a[tag=config__handler, limit=1] remove config__target__$(remove_3)
$tag @a[tag=config__handler, limit=1] remove config__target__$(remove_4)
$tag @a[tag=config__handler, limit=1] remove config__target__$(remove_5)
tag @a[tag=config__handler, limit=1] remove config__target.
$tag @a[tag=config__handler, limit=1] add config__target__$(add)
tag @a[tag=config__handler, limit=1] add config__target__path
