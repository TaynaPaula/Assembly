#Exercicio 1 larea do terreno A=C*L
.data
#aqui vai as mensagens
    msg1: .asciiz"\nDigite comprimento: "
    msg2: .asciiz"\nDigite Largura: "
    msg3: .asciiz"\nA area do Terreno é: "
    
.text 
main:
    #receba o comprimento
    li $v0, 4
    la $a0, msg1
    syscall
    
    #lendo o comprimento
    li $v0, 5
    syscall
    
    #move o vo para t0
    move $t0, $v0
    
    #recebendo a largura
    li $v0, 4
    la $a0, msg2
    syscall
    
    #lendo a alktura
    li $v0, 5
    syscall
    #move o v0 para t1
    move $t1, $v0
    #fazendo a multiplicação
    mul $t2, $t0, $t1
    
    # mostar mensagem 3: multiplicação L*C = t0*t1
    li $v0, 4        
    la $a0, msg3 
    syscall
    
    li $v0, 1
    move $a0, $t2 
    syscall
    
    li $v0, 10       
    syscall
   
   
