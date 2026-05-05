tellraw @s [{text: "═════════[ ", color: "dark_purple", bold: true}, {text: "Erreur détecté", color: "red"}, {text: " ]═════════"}]
tellraw @s ""
execute if score $br__error br.val matches 133 run tellraw @s [{text: "[", color: "white"}, {text: "Server", color: "dark_aqua"}, "] ", {text: "Type", color: "light_purple"}, {text: ": ", color: "yellow"}, {text: "ent-133", color: "red"}, {text: " > ", color: "yellow"}, {text: "Aucune entitée trouvée", color: "aqua"}]
tellraw @s ""
tellraw @s {text: "═════════════════════════════", color: "dark_purple", bold: true}
