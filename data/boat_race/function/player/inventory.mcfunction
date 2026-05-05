# Pseudo
execute store result score @s br.item__pseudo run data get entity @s Inventory[].components.minecraft:custom_data.pseudo 1
execute store result score @s br.nb__item__pseudo run clear @s player_head[custom_data={boat_race: {pseudo: 1b}, br: 1b}] 0
$execute unless score @s br.item__pseudo matches 1.. run item replace entity @s[tag=br__record__$(idx_rec)] armor.body with player_head[custom_data={boat_race: {pseudo: 1b}, br: 1b}, item_model="air"] 1
execute if score @s br.nb__item__pseudo matches 2.. run clear @s player_head[custom_data={boat_race: {pseudo: 1b}, br: 1b}]
$item modify entity @s[tag=br__record__$(idx_rec)] armor.body boat_race:player_name
