Respuestas
==========

1. ¿Cuál es el error en el código del método para calcular el máximo común divisor?

	El error se encuentra en la sentecia `while v == 0`. El error se debe a que el bucle exige que la variable **v** sea igual a cero y en consecuencia el programa no entra en el bucle; y cuando entra da un error de división por cero.

2. ¿Qué comandos del depurador utilizó para detectarlo? Describa la sesión de depuración.

	He utilizado los siguientes comandos:

	* l -> Para listar el programa.
	* n -> Para ejecutar el código sentencia por sentencia.
	* b -> Para establecer un breakpoint en una línea del código.

	La sesión de depuración es la siguiente:

		(rdb:1) n
		gcd.rb:1:def gcd(u, v)
		(rdb:1) l
		[-4, 5] in gcd.rb
		=> 1  def gcd(u, v)
		   2    u, v = u.abs, v.abs
		   3    while v == 0
		   4      u, v = v, u % v
		   5    end
		(rdb:1) n
		gcd.rb:9:puts gcd(6,3)
		(rdb:1) n
		6 

3. Escriba la dirección **HTTP** del repositorio que contiene el desarrollo de su práctica.

	[https://github.com/alu0100499247/prct05](https://github.com/alu0100499247/prct05)





