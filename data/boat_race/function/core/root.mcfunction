execute as @a at @s run function boat_race:race/root

execute as @a[tag=config__handler, limit=1] if score $br__count__player br.val matches 2.. unless score @s br.rank matches 1.. run function boat_race:config/timer
