scoreboard players set @s br.curr__time 0
scoreboard players set @s br.curr__ms 0
scoreboard players set @s br.curr__sec 0
scoreboard players set @s br.curr__min 0
function boat_race:player/position
function boat_race:data/get/entity/position
scoreboard players operation @s br.pos_ox = @s br.pos_x
scoreboard players operation @s br.pos_oz = @s br.pos_z
