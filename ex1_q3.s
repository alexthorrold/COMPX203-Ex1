.text
.global main

main:
    jal readswitches
    andi $1, $1, 0xFF
    addi $4, $0, 8
    add $5, $0, $0
    
loop:
    beqz $4, finish
    andi $3, $1, 0x1
    add $5, $5, $3
    subi $4, $4, 1
    srli $1, $1, 0x1
    j loop

finish:
    lw $2, output($5)
    jal writessd
    j main

.data
output:
    .word 0xA3
    .word 0x22
    .word 0x6B
    .word 0x0D
    .word 0x49
    .word 0xC0
    .word 0x7F
    .word 0xB8
    .word 0x31