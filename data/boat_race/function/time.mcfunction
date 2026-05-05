scoreboard players add @s br.curr__time 1
scoreboard players add @s br.curr__ms 1

execute if score @s br.curr__ms matches 20.. run function boat_race:time/seconds
execute if score @s br.curr__sec matches 60.. run function boat_race:time/minutes


function boat_race:time/display
