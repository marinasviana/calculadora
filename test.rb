require_relative "./calculadora.rb"

describe Calculadora do
	
	describe "#soma" do
		it "verifica o resultado da soma" do
			calc = Calculadora.new
			calc.num1= 1
			calc.num2= 2
			calc.operacao = "+"
			expect(calc.calculo).to eq(3)
		end
	end

	describe "#subtração" do
		it "verifica o resultado da subtração" do
			calc = Calculadora.new
			calc.num1= 1
			calc.num2= 2
			calc.operacao = "-"
			expect(calc.calculo).to eq(-1)
		end
	end

	describe "#divisão" do
		it "verifica o resultado da divisão" do
			calc = Calculadora.new
			calc.num1= 1
			calc.num2= 2
			calc.operacao = "/"
			expect(calc.calculo).to eq(0.5)
		end

		it "verifica o resultado da divisão por zero" do
			calc = Calculadora.new
			calc.num1= 2
			calc.num2= 0
			calc.operacao = "/"
			expect(calc.calculo).to eq("A  divisão é indefinida ou impossível entre os números")
		end

		it "verifica o resultado da divisão zero dividido por zero" do
			calc = Calculadora.new
			calc.num1= 0
			calc.num2= 0
			calc.operacao = "/"
			expect(calc.calculo).to eq("A  divisão 0/0 é indeterminada")
		end

	end

	describe "#multiplicação" do
		it "verifica o resultado da multiplicação" do
			calc = Calculadora.new
			calc.num1= 2
			calc.num2= 2
			calc.operacao = "*"
			expect(calc.calculo).to eq(4)
		end
	end


end
