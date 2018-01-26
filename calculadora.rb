class Calculadora

	attr_accessor :num1
	attr_accessor :num2
	attr_accessor :operacao


	def calculo()
		
		case operacao

			when "+"
				resultado = num1.to_i + num2.to_i
				
			when "-"
				resultado = num1.to_i - num2.to_i
				
			when "*"
				resultado = num1.to_i * num2.to_i
			when "/"

				if (num1.to_i == 0 && num2.to_i == 0)
					resultado = "A  divisão 0/0 é indeterminada"

				elsif (num1.to_i != 0 && num2.to_i == 0)
					resultado = "A  divisão é indefinida ou impossível entre os números"
				else
					resultado = num1.to_f / num2.to_f
				end
			else
				resultado = "Não foi possiver realizar o calculo: Você escolheu uma operação não existente"

		end
		return resultado
	end

	
end