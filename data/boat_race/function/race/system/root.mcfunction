# Live ranking
scoreboard players operation $boat_race__a boat_race.sort = $boat_race__pass boat_race.tmp
scoreboard players operation $boat_race__b boat_race.sort = $boat_race__pass boat_race.tmp
scoreboard players add $boat_race__b boat_race.sort 1

execute store result storage br:racer sort.boat_race__a int 1 run scoreboard players get $boat_race__a boat_race.sort
execute store result storage br:racer sort.boat_race__b int 1 run scoreboard players get $boat_race__b boat_race.sort

function boat_race:race/system/pass with storage br:racer sort

scoreboard players remove $boat_race__pass boat_race.tmp 1
execute if score $boat_race__pass boat_race.tmp matches 1.. run function boat_race:race/system/root
