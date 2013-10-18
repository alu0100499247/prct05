# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

	def test_mostrar
		assert_equal("(1/2)", Fraccion.new(1,2).to_s)
	end

	def test_suma
		assert_equal("(5/6)", Fraccion.new(1,2).suma(1,3).to_s)
	end

	def test_resta
		assert_equal("(1/6)", Fraccion.new(1,2).resta(1,3).to_s)
	end

	def test_producto
		assert_equal("(1/6)", Fraccion.new(1,2).producto(1,3).to_s)
	end

	def test_division
		assert_equal("(3/2)", Fraccion.new(1,2).division(1,3).to_s)
	end
end
