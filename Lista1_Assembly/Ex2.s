#Exercico 2 usuário informa quantidade P,M,G e o sistema calcula valor final
.data
#mensagens
     msg1: .asciiz"\nDigite a Quantidade de Camiseta P: "
     msg2: .asciiz"\nDigite a Quantidade de Camiseta M: "
     msg3: .asciiz"\nDigite a Quantidade de Camiseta G: "
     msg4: .asciiz"\nO valor final da venda é :" 
.text 
main:
    #receber msg1=P
    li $v0, 4
    la $a0, msg1
    syscall
    
    #ler P
    li $v0, 5
    syscall 
    #somar e guardar o P para t0
    add $t0, $v0, 0
    
    #multiplicar o p e armazenar em T1-------
    mul $t1, $t0, 10
    
    #receber msg2=M
    li $v0, 4 
    la $a0, msg2 
    syscall
    
    #ler M
    li $v0, 5 
    syscall
    #somar e guardar o m para t2:
    add $t2, $v0, 0
    
    #multiplicar m e armazenar em T3-----
    mul $t3, $t2, 12
    
    #receber msg3= G
    li $v0, 4 
    la $a0, msg3 
    syscall
    
    #ler G
    li $v0, 5 
    syscall
    #somar e guardar o G para t4 -------------
    mul $t4, $v0, 15

    #Soma de t0 + t3
    add $t5, $t1, $t3
    
    #coma de t5 +t4
    add $t6, $t5, $t4
   
    
    #ler msg4 
    li $v0, 4
    la $a0, msg4
    syscall
    
    #guardar resultado de t6 em a0
    li $v0, 1
    move $a0, $t6
    syscall

    li $v0, 10       
    syscall
