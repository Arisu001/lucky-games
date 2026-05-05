$execute if score $br__timer br.val matches $(timer) run title @s[tag=br__racer] title {text: "$(string)", color: $(color), bold: true}

$execute if score $br__timer br.val matches $(timer) run playsound block.note_block.bit master @s ~ ~ ~ $(volume) $(pitch) 0
