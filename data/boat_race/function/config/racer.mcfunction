scoreboard players set @s[tag=!br__player__finished] br.best__time 973841529
scoreboard players set $br__end__race br.val 0
scoreboard players set $br__start__race br.val 1
scoreboard players set $br__tmp__rank br.val 1
scoreboard players reset $br__timer br.val

function boat_race:config/racer/init
function boat_race:config/racer/rank
