.text
.global main

main:
    jal readswitches
    andi $1, $1, 0xFF
    add $2, $0, $0
    addi $4, $0, 8
loop:
    beqz $4, finish
    andi $3, $1, 0x1
    add $2, $2, $3
    subi $4, $4, 1
    srli $1, $1, 0x1
    j loop
finish:
    jal writessd
    j main