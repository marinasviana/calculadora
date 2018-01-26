
require_relative "./calculadora.rb"

class Interface

	def meuCalculo

		calc = Calculadora.new()

		puts "Entre com o primeiro valor"
		num1 = gets.chomp
		calc.num1 = num1

		puts "Digite a operação que você deseja realizar (+ , - , * , / ):"
		operacao = gets.chomp
		calc.operacao = operacao

		puts "Entre com o segundo valor"
		num2 = gets.chomp
		calc.num2 = num2

		resultado = calc.calculo
		puts "_________________________________________________________"
		puts "O resultado da operacao #{num1} #{operacao} #{num2} = #{resultado}"
	end
end


calculadoraOn = true
while calculadoraOn
	calculo = Interface.new
	
	calculo.meuCalculo
	puts "_________________________________________________________"
	puts "Digite 'x' para sair ou 'n' para uma nova operação"
	puts "_________________________________________________________"
	escolha = gets.chomp
	if escolha == 'x'
		calculadoraOn = false
	else
		system "cls"
	end
end
