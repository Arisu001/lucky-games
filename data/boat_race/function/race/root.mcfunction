execute store result score $br__count__player br.val if entity @a[tag=br__racer]

execute unless score $br__count__player br.val matches 2.. run function boat_race:config/racer/reset
execute if score $br__timer br.val matches ..-1 as @a[tag=br__racer] run function boat_race:config/racer

execute if score @s br.rank matches 1.. run function boat_race:time
execute if score @s br.curr__time matches 1.. run function boat_race:race/system
