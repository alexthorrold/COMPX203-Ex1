.text
.global main

main:
    jal readswitches
    andi $2, $1, 0xFF
    jal writessd
    j main