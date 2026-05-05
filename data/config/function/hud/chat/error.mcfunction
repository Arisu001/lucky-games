tellraw @s [{text: "═════════[ ", color: "dark_purple", bold: true}, {text: "Erreur détecté", color: "red"}, {text: " ]═════════"}]
tellraw @s ""
execute if score $config__error config.val matches 1001 run tellraw @s [{text: "[", color: "white"}, {text: "Server", color: "dark_aqua"}, "] ", {text: "Type", color: "light_purple"}, {text: ": ", color: "yellow"}, {text: "admin-1001", color: "red"}, {text: " > ", color: "yellow"}, {text: "2 admin detected", color: "aqua"}]
tellraw @s ""
tellraw @s {text: "═════════════════════════════", color: "dark_purple", bold: true}
