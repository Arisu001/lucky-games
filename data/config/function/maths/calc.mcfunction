# Difference
$scoreboard players set $config__edit__terrain__$(type)__calc_dx config.val $(x1)
$scoreboard players set $config__edit__terrain__$(type)__calc_dx2 config.val $(x2)
$scoreboard players operation $config__edit__terrain__$(type)__calc_dx config.val -= $config__edit__terrain__$(type)__calc_dx2 config.val

$scoreboard players set $config__edit__terrain__$(type)__calc_dy config.val $(y1)
$scoreboard players set $config__edit__terrain__$(type)__calc_dy2 config.val $(y2)
$scoreboard players operation $config__edit__terrain__$(type)__calc_dy config.val -= $config__edit__terrain__$(type)__calc_dy2 config.val

$scoreboard players set $config__edit__terrain__$(type)__calc_dz config.val $(z1)
$scoreboard players set $config__edit__terrain__$(type)__calc_dz2 config.val $(z2)
$scoreboard players operation $config__edit__terrain__$(type)__calc_dz config.val -= $config__edit__terrain__$(type)__calc_dz2 config.val

# Valeur absolue
$execute if score $config__edit__terrain__$(type)__calc_dx config.val matches ..-1 run scoreboard players operation $config__edit__terrain__$(type)__calc_dx config.val *= %config__minus_one config.const
$execute if score $config__edit__terrain__$(type)__calc_dy config.val matches ..-1 run scoreboard players operation $config__edit__terrain__$(type)__calc_dy config.val *= %config__minus_one config.const
$execute if score $config__edit__terrain__$(type)__calc_dz config.val matches ..-1 run scoreboard players operation $config__edit__terrain__$(type)__calc_dz config.val *= %config__minus_one config.const

# +1 inclusif
$scoreboard players add $config__edit__terrain__$(type)__calc_dx config.val 1
$scoreboard players add $config__edit__terrain__$(type)__calc_dy config.val 1
$scoreboard players add $config__edit__terrain__$(type)__calc_dz config.val 1

# Volume
$scoreboard players operation $config__edit__terrain__$(type)__calc_dx config.val *= $config__edit__terrain__$(type)__calc_dy config.val
$scoreboard players operation $config__edit__terrain__$(type)__calc_dx config.val *= $config__edit__terrain__$(type)__calc_dz config.val
$scoreboard players operation $config__edit__terrain__$(type)__calc_total config.val = $config__edit__terrain__$(type)__calc_dx config.val
