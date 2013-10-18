# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	attr_accessor :num, :den  # Define metodos de acceso a las variables de instancia

	def initialize(num, den)  # Inicializa el racional
		@num, @den = num, den
	end

	def to_s  # Muestra una cadena con nuestro racional
		"(#{@num}/#{@den})"
	end

	def reducir(x, y)  # Reduce el numero racional a su minima expresion
		num = x / gcd(x, y)
		den = y / gcd(x, y)
		return num, den
	end		

	def suma(x, y)  # Devuelve un racional con la suma de (@num/@den) + (x/y)
		if (@den == y)
			@num += x
		else
			z = @den * y
			w = ((z/@den) * @num) + ((z/y) * x)

			a, b = reducir(w, z)
		end		

		racional = Fraccion.new(a, b)
		return racional 
		
	end

	def resta(x, y)  # Devuelve un racional con la resta de (@num/@den) - (x/y)
		if (@den == y)
			@num -= x
		else
			z = @den * y
			w = ((z/@den) * @num) - ((z/y) * x)

			a, b = reducir(w, z)
		end		

		racional = Fraccion.new(a, b)
		return racional 
		
	end

	def producto(x, y)  # Devuelve un racional con el producto de (@num/@den) * (x/y)
		racional = Fraccion.new(@num*x, @den*y)
		return racional
	end

	def division(x, y)  # Devuelve un racional con la division de (@num/@den) / (x/y)
		racional = Fraccion.new(@num*y, @den*x)
		return racional
	end

end
