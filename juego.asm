.data
	
	pantalla: .asciz "+------------------------------------------------+\n|Jugador:                                vidas:  |\n|------------------------------------------------|\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n+------------------------------------------------+\n|                                                |\n|              superficie de Argos               |\n"
	lenpantalla =. -pantalla

	//menu
	pantalla_menu:     
		   .asciz "+------------------------------------------------+\n"
          	   .asciz "|                                                |\n"
       		   .asciz "|                                                |\n"
        	   .asciz "|                                                |\n"
        	   .asciz "|               INGRESA TU NOMBRE                |\n"
       		   .asciz "|                 PARA COMENZAR                  |\n"
      	 	   .asciz "|                                                |\n"
       		   .asciz "|                                                |\n"
        	   .asciz "|                                                |\n"
       		   .asciz "|                                                |\n"
      		   .asciz "|                     __|__                      |\n"
       		   .asciz "|                      _|_                       |\n"
      	           .asciz "|                     | _ |                      |\n"
       		   .asciz "|                  __| (_) |__                   |\n"
       		   .asciz "|             ____|_ ======= _|____              |\n"
       		   .asciz "|    ________| _  (_)_______(_)  _ |________     |\n"
       		   .asciz "|   <___+____ (_) |     _     | (_) ____+___>    |\n"
      	 	   .asciz "|            |___  |   (_)   |  ___|             |\n"
       		   .asciz "|                |_____________|                 |\n"
		   .asciz "|                                                |\n"
		   .asciz "|                                                |\n"
       		   .asciz "+------------------------------------------------+\n"

	longitudpan3 = .-pantalla_menu

	//limpiar
	pantalla_limpia: .asciz "+------------------------------------------------+\n|Jugador:                                vidas:  |\n|------------------------------------------------|\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n|                                                |\n+------------------------------------------------+\n|                                                |\n|              superficie de Argos               |\n"
	
	enter: .ascii "\n"
	cls: .asciz "x1b[H\x1b[2J"
	lencls=. -cls


	//ganar
	pantallaGanar:     .asciz "+------------------------------------------------+\n"
          	   .asciz "|                 ___---___                      |\n"
       		   .asciz "|              .--         --.                   |\n"
        	   .asciz "|            ./   ()      .-.  .                 |\n"
        	   .asciz "|           /   o    .   (   )                   |\n"
       		   .asciz "|          / .            '-'                    |\n"
      	 	   .asciz "|         | ()    .  O         .  |              |\n"
       		   .asciz "|        |                         |             |\n"
        	   .asciz "|        |    o           ()       |             |\n"
       		   .asciz "|        |       .--.          O   |             |\n"
      		   .asciz "|         | .   |    |            |              |\n"
       		   .asciz "|               `.__.'    o   .  /               |\n"
      	           .asciz "|                               /                |\n"
       		   .asciz "|            `   o    ()      /'            	 |\n"
       		   .asciz "|              `--___   ___--'         _____     |\n"
       		   .asciz "|                    ---              |     |    |\n"
       		   .asciz "|   		                     (|     |)   |\n"
      	 	   .asciz "|          FELICIDADES GANASTE!!      |     |    |\n"
       		   .asciz "|                                      `---'     |\n"
		   .asciz "|                                      _|_|_     |\n"
		   .asciz "|                                                |\n"
       		   .asciz "+------------------------------------------------+\n"
	longitudpan = . - pantallaGanar

	//perder
	pantallaPerder: .asciz "+------------------------------------------------+\n"
          	   .asciz "|                                                |\n"
       		   .asciz "|                   GAME  OVER                   |\n"
        	   .asciz "|     apriete r                  apriete s       |\n"
        	   .asciz "|  para reintentar              para salir       |\n"
       		   .asciz "| 	                                         |\n"
      	 	   .asciz "|                  :+#%@@@@%#+:                  |\n"
       		   .asciz "|                =%@@@@@@@@@@@@%=                |\n"
        	   .asciz "|               +@@@@@@@@@@@@@@@@+               |\n"
       		   .asciz "|               %@@@@@@@@@@@@@@@@@               |\n"
      		   .asciz "|               #@@@@@@@@@@@@@@@@#               |\n"
       		   .asciz "|               :@%+--+@@@@+--=%@:               |\n"
      	           .asciz "|                @:   .@@@@.   :@.               |\n"
       		   .asciz "|          *@%: %@%**#@@--@@#**%@% :%@#          |\n"
       		   .asciz "|         .@@@#--#@@@@@+  +@@@@@#--#@@@.         |\n"
       		   .asciz "|         %@@*#@@@#@-%@@@@@@%-@%@@@#*@@%         |\n"
       		   .asciz "|          .    :+#@*-*#%%#*-*@#+:    .          |\n"
      	 	   .asciz "|                  #@%**##*#%@*                  |\n"
       		   .asciz "|         .=:  :=#@@@@@@@@@@@@@@#+:  :=.         |\n"
		   .asciz "|         %@@%@@%#+-. -****- .-+#%@@%@@#         |\n"
		   .asciz "|         .@@@*                    *@@@.         |\n"
       		   .asciz "+------------------------------------------------+\n"

	longitudpan2 = . - pantallaPerder


	
	//para el random
	seed: .word 1
	const1: .word 1103515245
	const2: .word 12345
	numero: .word 0
	
	//para la nave
	tecla: .ascii "  "
	posNave : .word 177
	
	//para vidas
	vidas: .word 3
	posVidaExtra : .word 0
	nombre: .ascii "  "
	tecla_r: .ascii "  "


.text

limpiar:
	 .fnstart
 	mov r0,#1
 	ldr r1,=cls
 	ldr r2,=lencls
 	mov r7,#4
 	swi 0
 	bx lr
 	.fnend

presionar_tecla:
	.fnstart
	push {lr}
	mov r7, #3 //lectura por teclado
	mov r0, #0 //Ingresa cadena
	mov r2, #2 //Leer caracteres
	ldr r1, =tecla //donde se guarda
	swi 0
	pop {lr}
	bx lr
	.fnend

presionar_tecla_reintentar:
	.fnstart
	push {lr}
	mov r7, #3 //lectura por teclado
	mov r0, #0 //Ingresa cadena
	mov r2, #2 //Leer caracteres
	ldr r1, =tecla_r //donde se guarda
	swi 0
	pop {lr}
	bx lr
	.fnend


pedir_nombre:
	.fnstart
	push {lr}
	mov r7, #3 //lectura por teclado
	mov r0, #0 //Ingresa cadena
	mov r2, #6 //Leer caracteres
	ldr r1, =nombre //donde se guarda
	swi 0
	pop {lr}
	bx lr
	.fnend

crear_nave:
	.fnstart
	push {lr}
	ldr r1, =pantalla
	ldr r2, =posNave
	ldr r2, [r2]
	add r1, r2
	mov r4, #'V'
	strb r4, [r1]
	swi 0
	pop {lr}
	bx lr
	.fnend

mover_nave:
	.fnstart
	push {lr}
	ldr r1, =pantalla

	borrar_anterior:
		ldr r3, =posNave
		ldr r2, [r3]
		add r1, r2
		mov r4, #' '
		strb r4, [r1]

	pedir_tecla:
		ldr r11, =tecla //traigo la direccion  del caracter que presiono
		ldrb r11, [r11] //guardo el caracter en r11
	
		cmp r11, #'s' //compara con s
		beq mover_down

		cmp r11, #'a'   //compara con a
		beq  mover_izq

		cmp r11, #'d' //compara con d
		beq mover_der
	
		cmp r11, #'w' //compara con w
		beq mover_up



	mover_down:
		add r1, #51
		ldrb r6, [r1]
		
		add r2, #51
		str r2, [r3]
		
		cmp r6, #'O'
		beq nave_choco
		
		bal fin_mover_nave



	mover_izq:
		sub r1, #1
		ldrb r6, [r1]
		
		cmp r6, #'|'
		beq fin_mover_nave
		
		sub r2, #1
		str r2, [r3]
		
		cmp r6, #'O'
		beq nave_choco

		bal fin_mover_nave


	mover_der:
		add r1, #1
		ldrb r6, [r1]
		
		cmp r6, #'|'
		beq fin_mover_nave
		
		add r2, #1
		str r2, [r3]
		
		cmp r6, #'O'
		beq nave_choco
		
		bal fin_mover_nave

	mover_up:
		sub r1, #51
		ldrb r6, [r1]
		
		cmp r6, #'-'
		beq fin_mover_nave
		
		sub r2, #51
		str r2, [r3]
		
		cmp r6, #'O'
		beq nave_choco
		
		bal fin_mover_nave

	nave_choco:
		sub r1, #104
		mov r8, #0 //contador hasta 24 columnas
		mov r9, #0 //contador hasta 4 filas
		
		ldr r6, =vidas
		ldrb r3, [r6]
		sub r3, #1
		strb r3, [r6]
		
			vaciar_choque:
				cmp r9, #5
				beq fin_mover_nave
				
				mov r5, #' '
				strb r5, [r1]
				
				add r1, #1
				add r8, #1
				
				cmp r8, #5
				beq bajar_linea
				
				bal vaciar_choque
	
			bajar_linea:
				add r1, #46
				mov r8, #0
				add r9, #1
				bal vaciar_choque
				
	fin_mover_nave:
	pop {lr}
	bx lr
	.fnend




//RANDOM

myrand:
	.fnstart
		push {lr}
		ldr r8, =seed @ leo puntero a semilla
		ldr r0, [ r8 ] @ leo valor de semilla
        ldr r9, =const1
		ldr r9, [ r9 ] @ leo const1 en r2
		mul r10, r0, r9 @ r3= seed * 1103515245
		ldr r0, =const2
		ldr r0, [ r0 ] @ leo const2 en r0
		add r0, r0, r10 @ r0= 10+ 12345
		str r0, [ r8 ] @ guardo en variable seed
/* Estas dos lí neas devuelven "seed > >16 & 0x7fff ".Con un peque ño truco evitamos el uso del AND */
		LSL r0, # 1
		LSR r0, # 17
		pop {lr}
		bx lr
	.fnend 

mysrand:
	.fnstart
		push {lr}
		ldr r8, =seed
		str r0, [ r8 ]
		pop {lr}
		bx lr
	.fnend
	

//resta 1000, 100 o 10 para quedarse con un numero de un solo digito y verifica que este entre 1 y 3

random_1_al_3:
	.fnstart
	push {lr}
	mov r5, #5
	
	ciclo_hasta_3:
		cmp r5, #3
		bls fin_random_1_al_3
		
		bl myrand @ leo número aleatorio, queda en r0	
		mov r5, r0

		restar_1000:
			cmp r5, #1000
			blt restar_100
			
			sub r5, #1000
			bal restar_1000
			
		restar_100:
			cmp r5, #100
			blt restar_10
			
			sub r5, #100
			bal restar_100
			
		restar_10:

			cmp r5, #10
			blt ciclo_hasta_3	
		
			sub r5, #10
			
			bal restar_10
		
	fin_random_1_al_3:
		pop {lr}
		bx lr
			
	.fnend

//resta 1000, 100 o 10 para quedarse con un numero de un solo digito y verifica que este entre 2 y 9	
random_2_al_9:
	.fnstart
	push {lr}
	mov r3, #1
	
	ciclo_hasta_9:
		cmp r3, #5	
		bgt fin_random_1_al_9
		
		bl myrand @ leo número aleatorio, queda en r0	
		mov r3, r0

		restar_1000_1:
			cmp r3, #1000
			blt restar_100_1
			
			sub r3, #1000
			bal restar_1000_1
			
		restar_100_1:
			cmp r3, #100
			blt restar_10_1
			
			sub r3, #100
			bal restar_100_1
			
		restar_10_1:

			cmp r3, #10
			blt ciclo_hasta_9	
		
			sub r3, #10
			
			bal restar_10_1
		
	fin_random_1_al_9:
		pop {lr}
		bx lr
			
	.fnend

random_diamantes:
	.fnstart
	push {lr}
	ldr r1, =pantalla
	ldr r2, [r1]
		
	num_diamantes_r:
		bl myrand @ leo número aleatorio, queda en r0	
		mov r4, r0

	restar_1000_d:
		cmp r4, #1000
		blt corroborar_diamante
			
		sub r4, #1000
		bal restar_1000_d
			
	corroborar_diamante:
		cmp r4, #153
		blt num_diamantes_r
		add r1, r4
		ldr r2, [r1]
		cmp r2, #'-'
		beq num_diamantes_r
		cmp r2, #'O'
		beq num_diamantes_r
		cmp r2, #'+'
		beq num_diamantes_r
		cmp r2, #'|'
		beq num_diamantes_r
		cmp r2, #'/'
		beq num_diamantes_r
		cmp r2, #'n'
		beq num_diamantes_r
		cmp r2, #'v'
		beq num_diamantes_r
			
	fin_random_diamantes:
		pop {lr}
		bx lr
	.fnend
	
		
mostrar_pantalla:
	.fnstart
	
	mov r7, #4		
	mov r0, #0
	mov r2, #1
	ldr r1, =enter
	swi 0
	
	//lo que hay que hacer si o si para ver en pantalla
	mov r7, #4		
	mov r0, #0
	mov r2, #1122
	ldr r1, =pantalla
	swi 0

	bx lr		//vuelvo
	.fnend

mostrar_pantalla_menu:
	.fnstart
	push {lr}

	mov r7, #4		
	mov r0, #0
	mov r2, #1
	ldr r1, =enter
	swi 0
	
	//lo que hay que hacer si o si para ver en pantalla
	mov r7, #4		
	mov r0, #0
	ldr r2, =longitudpan3
	ldr r1, =pantalla_menu
	swi 0

	pop {lr}
	bx lr		//vuelvo
	.fnend

mostar_pantalla_gano:
	.fnstart
	push {lr}

	mov r7, #4		
	mov r0, #0
	mov r2, #1
	ldr r1, =enter
	swi 0

	mov r7, #4
	mov r0, #1
	ldr r2, =longitudpan
	ldr r1, =pantallaGanar
	swi 0

	pop {lr}
	bx lr
	.fnend

mostrar_pantalla_perdio:
	.fnstart
	push {lr}

	mov r7, #4		
	mov r0, #0
	mov r2, #1
	ldr r1, =enter
	swi 0

	mov r7, #4
	mov r0, #1
	ldr r2, =longitudpan2
	ldr r1, =pantallaPerder
	swi 0

	pop {lr}
	bx lr
	.fnend
 	
menu_inicio:
	.fnstart
	push {lr}
	
	bl mostrar_pantalla_menu
	bl pedir_nombre
	
	pop {lr}
	bx lr
	.fnend

limpiar_pantalla:
	.fnstart
	push {lr}
	
	ldr r1, =pantalla
	ldr r3, =pantalla_limpia
	add r1, #102
	add r3, #102
	
	ciclo_limpiar_pantalla:
		ldrb r2, [r3]
		
		cmp r2, #00
		beq fin_limpiar_pantalla

		strb r2, [r1]
		
		add r1, #1
		add r3, #1
		bal ciclo_limpiar_pantalla

	fin_limpiar_pantalla:
			
		pop {lr}
		bx lr
	.fnend

mostrar_vidas:
	.fnstart
	push {lr}
	ldr r1, =pantalla
	add r1, #99
	
	ldr r3, =vidas
	ldr r3, [r3]
	
	cmp r3, #1
	beq mostrar_1
	cmp r3, #2
	beq mostrar_2
	cmp r3, #3
	beq mostrar_3

	mostrar_1:
		mov r3, #'1'
		strb r3, [r1]
		bal fin_mostrar_vidas
	
	mostrar_2:
		mov r3, #'2'
		strb r3, [r1]
		bal fin_mostrar_vidas

	mostrar_3:
		mov r3, #'3'
		strb r3, [r1]
		bal fin_mostrar_vidas
		
	fin_mostrar_vidas:
		pop {lr}
		bx lr
	.fnend

mostrar_nombre:
	.fnstart
	push {lr}
	ldr r1, =pantalla
	add r1, #60
	ldr r3, =nombre
	mov r4, #0	
	mov r5, #0
	
	ciclo_mostrar_nombre:
		ldrb r5, [r3]
		cmp r4, #3
		beq fin_mostrar_nombre

		strb r2, [r3]
		cmp r2, #'\'
		beq fin_mostrar_nombre
		
		strb r5, [r1]
		
		add r3, #1
		add r1, #1
		add r4, #1

		bal ciclo_mostrar_nombre
		
	fin_mostrar_nombre:
		pop {lr}
		bx lr
	.fnend

dibujar_asteroides:
	.fnstart
	push {lr}
	
	ldr r1, =pantalla
	add r1, #900 			//para estar en la fila que hay que dibujarlos
	add r1, #19

	mov r5, #1 				//r5 para ver cual dibujo
	mov r3, #1		 		//r3 espacios entre asteroides
	mov r2, #0				//contador de espacios para ver si llegue al final de la fila

	crear_asteroide:
	
		cmp r2, #50			//cuando llega a 47 significa que dibujo toda la linea
		bge fin_dibujar_asteroides	
		
		bl random_2_al_9	//sobreescribe r3 con num random
		add r1, r3			//agreego los espacios a la pantalla
		add r2, r3			//se los agrego al contador
		
		bl random_1_al_3 	//sobrrescribe r5 para cambiar el que tiene que dibujar	
		
		cmp r5, #1
		beq asteroide_chico
		
		cmp r5, #2
		beq asteroide_mediano
		
		cmp r5, #3
		beq asteroide_grande
		
		bal crear_asteroide
	
	//agrega los caracteres de los asteroides a la cadena y incrementa el contador
	asteroide_chico:
		cmp r2, #47
		bge fin_dibujar_asteroides	
		mov r4, #'O'
		sub r1, #51
		strb r4, [r1]
		add r1, #51
		add r2, #1
		bal crear_asteroide
	
	asteroide_mediano:
		cmp r2, #46
		bge fin_dibujar_asteroides	
		mov r4, #'O'
		strb r4, [r1]
		add r1, #1
		
		strb r4, [r1]
		sub r1, #52
		
		strb r4, [r1]
		add r1, #1

		strb r4, [r1]
		
		add r2, #2
		add r1, #51
		bal crear_asteroide

	asteroide_grande:
		cmp r2, #45
		bge fin_dibujar_asteroides	
		mov r4, #'O'
		
		strb r4, [r1]
		add r1, #1
		
		strb r4, [r1]
		
		sub r1, #53
		
		strb r4, [r1]
		add r1, #1
		
		strb r4, [r1]
		add r1, #1

		strb r4, [r1]
		
		sub r1, #53
		strb r4, [r1]
		add r1, #1
		
		strb r4, [r1]
		
		add r2, #3
		add r1, #104
		bal crear_asteroide
	
	fin_dibujar_asteroides:
		pop {lr}
		bx lr
	.fnend

mover_asteroides:
	.fnstart
	ldr r1, =pantalla
	add r1, #102
	mov r4, #0 				//contador de columnas
	mov r6, #0 				//Comprueba si es la primera linea
	mov r8, #' '
	
	cambiar_posicion:
		add r1, #1
		add r4, #1
		ldrb r2, [r1] 		//Para saber caracter en esa posicion
		
		cmp r2, #'+'
		beq fin_cambiar_posicion
		
		cmp r2, #'V'
		beq cambiar_posicion
		
		cmp r4, #49
		beq sumar_fila
		
		cmp r6, #1
		beq limite_pantalla
		
		cmp r2, #'O'
		beq cambiar_fila
		
		bal cambiar_posicion
	
	sumar_fila:
		add r1, #2
		add r6, #1
		mov r4, #0
		bal cambiar_posicion
	
	limite_pantalla:
		cmp r4, #48
		ble limpiar_fila
	
	limpiar_fila:
		strb r8, [r1]
		bal cambiar_posicion
		
	cambiar_fila:
		strb r8, [r1]
		sub r1, #51
		strb r2, [r1]
		add r1, #51
		bal cambiar_posicion
	
	fin_cambiar_posicion:
		bx lr
		.fnend


ubicar_diamante:
	.fnstart
	push {lr}

	ldr r5, =vidas
	ldr r5, [r5]
	
	cmp r5, #3				//si tiene todas las vidas no genera nuevops diamantes
	beq fin_ubica_diamantes
	
	ldr r3, =posVidaExtra
	ldr r4, [r3]	
	
	ldr r1, =pantalla
	add r1, r4
	ldrb r2, [r1]
	
	cmp r2, #'O'
	beq fin_ubica_diamantes
	
	cmp r2, #' '
	beq dibujar_diamante
	
	cmp r4, #0				//si la pos del diamante es 0 es porque no hay ninguno en pantalla
	bne fin_ubica_diamantes
	
	generar_pos_diamante:
		push {r1}
		bl random_diamantes
		pop {r1}
		str r4, [r3]
		add r1, r4
		
	dibujar_diamante:
		mov r2, #'X'
		strb r2, [r1]
		bal fin_ubica_diamantes
		
	fin_ubica_diamantes:
		pop {lr}
		bx lr
	
	.fnend
	
diamante_ok:
	.fnstart
	push {lr}
	
	ldr r1, =pantalla
	ldr r3, =posVidaExtra
	ldr r4, [r3]
	
	ldr r8, =posNave	
	ldr r8, [r8]

	cmp r4, r8
	beq sumar_vida
	
	bal fin_diamante_ok
	
	sumar_vida:
		ldr r5, =vidas
		ldr r6, [r5]

		add r6, #1
		str r6, [r5]
		
		mov r4, #0
		str r4, [r3]
		
	fin_diamante_ok:
		pop {lr}
		bx lr
	.fnend

.global main

	main:
		//random
		mov r0, #42  
		bl mysrand 
		mov r2, #0
		push {r2}

		bl menu_inicio
		bl mostrar_nombre
		
		ciclo_main:
			ldr r1, =posNave
			ldr r1, [r1]
			cmp r1, #1020
			bge gano
			
			ldr r1, =vidas
			ldr r1, [r1]
			cmp r1, #0
			beq perdio
			
			bl limpiar		
			bl mostrar_vidas
			bl crear_nave
			bl mostrar_pantalla
			bl presionar_tecla
			bl mover_asteroides
			bl mover_nave
			bl ubicar_diamante
			bl diamante_ok
			
			pop {r2}
			cmp r2, #0
			beq crear_asteroides_main
			sub r2, #1
			push {r2}
			bal ciclo_main

			crear_asteroides_main:	
				bl dibujar_asteroides		
				mov r2, #3
				push {r2}
				bal ciclo_main


	gano:
		bl mostar_pantalla_gano
		bal fin

	perdio:
		bl mostrar_pantalla_perdio
		bl presionar_tecla_reintentar
	
		ldr r3, =tecla_r
		ldrb r3, [r3]

		cmp r3, #'r'
		beq reintentar

		cmp r3, #'s'
		beq fin

		bal perdio

	reintentar:
		bl limpiar_pantalla
		ldr r2, =vidas
		mov r3, #3
		str r3, [r2]

		ldr r2, =posNave
		mov r3, #177
		str r3, [r2]

		ldr r2, =posVidaExtra
		mov r3, #0
		str r3, [r2]

		mov r2, #0
		push {r2}

		bal ciclo_main

	fin:
		mov r7, #1
		swi 0
