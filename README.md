# Starship
Introducción

El trabajo, consiste en la implementación de funciones lógicas para lograr desarrollar el juego “OC Starship” en  lenguaje ensamblador , consistía en grupos de tres personas. Para poder trabajar de manera asíncrona y virtual, cada uno tenía su propia carpeta en el acceso remoto, que se nos otorgó. En pocas palabras, el juego a crear, tenía como misión principal, manejar una nave mientras esquivas los anillos de asteroides que se aproximan y llegar al planeta Argon.

Implementaciones 

Pantallas

Contamos con cuatro subrutinas para mostrar las distintas pantallas. Una es mostrar_pantalla_menu, que se llama desde la subrutina menu_inicio, la cual también se encarga de pedir el nombre del usuario. Luego tenemos la subrutina mostrar_pantalla que es la que   se encarga de mostrar la pantalla que corresponde al juego, y se complementa con otras dos subrutinas que son mostrar_nombre y  mostrar_vidas, las cuales se encargan respectivamente de levantar el dato nombre y  vidas para ser mostrado durante el juego. Luego, mostrar_pantalla_gano y mostrar_pantalla_perdio son las que se llaman una vez se gana o pierde el juego. limpiar_pantalla se encarga de reemplazar la pantalla que se usa durante el juego por una que está “limpia”, es decir está como antes de empezar a jugar sin esteroides ni diamantes dibujados. 

Nave

La nave, representada con el carácter ascii V, se dibuja en una posición inicial a la mitad del margen superior. Esta posición se guarda en un dato llamado posNave el cual se utiliza para una subrutina llamada  crear_nave, que dibuja la nave en la cadena pantalla en esa posición. También tener la posición guardada nos sirve para detectar colisiones y saber si llegó a Argos. Los movimientos de la nave los controlamos mediante dos subrutinas: presionar_tecla, que guarda la tecla que ingresó el usuario en un dato llamado tecla; y la subrutina mover_nave que compara la tecla ingresada y resta/suma 51 a posNave si la nave debe cambiar de fila, o 1 si debe cambiar de columna. Dentro de mover_nave se verifican los límites de la pantalla y si colisiona con un asteroide.
Cuando la nave colisiona con el asteroide se eliminan todos los caracteres del asteroide en un “radio” de cinco filas por cinco columnas, esto ya teniendo en cuenta que la nave no puede colisionar con los bordes por lo que no genera problemas en ese aspecto.

Asteroides

Los asteroides, representados por el carácter ascii O, se generan siempre que se llama a la subrutina dibujar_asteroides por lo tanto se generan infinitamente hasta que el jugador pierda o gane. Tenemos tres tipos distintos de asteroides, uno chico que es un solo carácter, uno mediano que son cuatro y uno grande que son seis. El orden en que se generan es aleatorio, esto se hace mediante un random que nos da un número de cinco cifras al cual le restamos múltiplos de 10 hasta que quede en el rango de 0 a 9, pero solo lo devolvemos a la subrutina si es 1, 2 o 3, en caso contrario pedimos otro número. Entonces si el random nos da un 1 dibujamos el asteroide chico, si es 2 el mediano y si es 3 el grande. Algo similar hacemos para los espacios entre asteroides con la subrutina random_5_al_9, solo que el número que nos da está en ese rango. 
La subrutina mover_asteroides recorre la pantalla y cada vez que encuentra una O la redibuja una fila más arriba y la borra de la posición que estaba anteriormente. Si se encuentra con el límite superior de la pantalla no la redibuja.

Diamantes

Los diamantes se generan y dibujan mediante una subrutina llamada ubicar_diamante. Nosotros decidimos que los diamantes se generan cuando el dato vidas es menor a tres y solo uno por vez. Esto último se verifica viendo si el dato PosVidaExtra es cero ya que esto significa que no hay ninguno dibujado entonces se genera uno y su posición se guarda en este dato, por lo que no se puede generar uno nuevo. En caso de que la posición sea distinta de cero y el carácter de la pantalla este vacío se dibuja el diamante, con esto damos la ilusión de que los asteroides pasan por encima de los diamantes. La posición del diamante se genera mediante la subrutina random_diamantes que actúa de manera similar a los anteriores randoms descritos solo que este verifica que la posición que se generó para el diamante está vacía y dentro del rango de la pantalla. 
El dato PosVidaExtra solo se restaura a cero cuando la nave colisionó con este. La colisión la verificamos por medio de la subrutina diamante_ok, viendo si tanto el dato de la posición de la nave como de la posición del diamante son el mismo, en este caso  se levanta el dato vidas y se le suma uno.

Main

Lo primero que se hace al ingresar al main es llamar a menu_inicio para que, como se mencionó anteriormente, el usuario vea la pantalla de inicio e ingrese su nombre. Luego se entra en un ciclo que para salir de este hay dos opciones, que la posición de la nave sea mayor a 1020, es decir que haya ganado, o que las vidas sean 0 o sea hayas perdido. Cada una va a sus respectivos saltos de línea fuera del ciclo. Desde el ciclo_main se llaman a todas las funciones descritas anteriormente, por ejemplo, encargadas de pedir una tecla al usuario para que la nave se mueva, de mover la nave, dibujar los diamantes y asteroides. Estos últimos, para que no se  superpongan, se generan cada 4 ciclos mediante un contador, r2, el cual usamos con push y pop para poder sobreescribirlo en las subrutinas del main sin perder el valor.
El salto de línea gano llama a la subrutina mostrar_pantalla_gano y termina el juego. En cambio perdió muestra la subrutina mostrar_pantalla_perdio pero le da al; usuario la posibilidad de reintentar o salir, pidiéndole que ingrese una r para reintentar o una s para  salir. Esto lo hicimos de esta manera ya que pensamos que si ganas no tiene mucho sentido reintentar por que es el mismo juego, en cambio si pierdes si tiene sentido que quieras reintentar.  Si al perder selecciona reintentar se restauran los datos vidas, posNave, PosVidaExtra, se llama limpiar_pantalla y se vuelve al ciclo main.

