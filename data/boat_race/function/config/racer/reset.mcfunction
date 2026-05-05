function boat_race:hud/clear
scoreboard players reset @a br.rank
# tag @a remove br__racer

scoreboard players reset $br__timer br.val
scoreboard players reset @a br.curr__time
scoreboard players reset @a br.curr__ms
scoreboard players reset @a br.curr__sec
scoreboard players reset @a br.curr__min
scoreboard players reset @a br.pos_x
scoreboard players reset @a br.pos_z
scoreboard players reset @a br.pos_ox
scoreboard players reset @a br.pos_oz
