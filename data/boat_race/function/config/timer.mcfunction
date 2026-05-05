tag @a remove config__start

clear @a #config:config[custom_data={entity: {toggle: 1b}, config: 1b}]
clear @a #config:config[custom_data={entity: {remove: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {start: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {checkpoint: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {finish: 1b}, config: 1b}]
clear @a #config:config[custom_data={undo: 1b, config: 1b}]

execute unless score $br__timer br.val matches -5.. run function boat_race:config/timer/root
scoreboard players remove $br__timer br.val 1

function boat_race:hud/screen/timer {timer: 100, string: "5",    color: "dark_red",   volume: 0,    pitch:   0}
function boat_race:hud/screen/timer {timer: 80,  string: "4",    color: "red",        volume: 0,    pitch:   0}
function boat_race:hud/screen/timer {timer: 60,  string: "3",    color: "gold",       volume: 1000, pitch:   0}
function boat_race:hud/screen/timer {timer: 40,  string: "2",    color: "yellow",     volume: 1000, pitch:   1}
function boat_race:hud/screen/timer {timer: 20,  string: "1",    color: "dark_green", volume: 1000, pitch: 1.5}
function boat_race:hud/screen/timer {timer: -1,  string: "GO !", color: "green",      volume: 1000, pitch:   2}
