execute store result score @s br.pos_x run data get entity @s Pos[0] 1000
execute store result score @s br.pos_z run data get entity @s Pos[2] 1000

scoreboard players operation @s br.dx = @s br.pos_x
scoreboard players operation @s br.dx -= @s br.pos_ox

scoreboard players operation @s br.dz = @s br.pos_z
scoreboard players operation @s br.dz -= @s br.pos_oz

scoreboard players operation @s br.progress += @s br.dx
scoreboard players operation @s br.progress += @s br.dz

scoreboard players operation @s br.pos_ox = @s br.pos_x
scoreboard players operation @s br.pos_oz = @s br.pos_z
