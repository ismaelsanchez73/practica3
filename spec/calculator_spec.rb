require_relative '../lib/calculator'

RSpec.describe Calculator do
  before(:each) do
    @calculator = Calculator.new
  end

  describe "#add" do
    it "suma dos números correctamente" do
      expect(@calculator.add(5, 3)).to eq(8)
      expect(@calculator.add(-1, 1)).to eq(0)
    end
  end

  describe "#subtract" do
    it "resta dos números correctamente" do
      expect(@calculator.subtract(10, 4)).to eq(6)
      expect(@calculator.subtract(5, 8)).to eq(-3)
    end
  end

  describe "#multiply" do
    it "multiplica dos números correctamente" do
      expect(@calculator.multiply(3, 7)).to eq(21)
      expect(@calculator.multiply(-2, 4)).to eq(-8)
    end
  end

  describe "#divide" do
    it "divide dos números correctamente" do
      expect(@calculator.divide(10, 2)).to eq(5)
      expect(@calculator.divide(-9, 3)).to eq(-3)
    end

    it "lanza una excepción si se intenta dividir por cero" do
      expect { @calculator.divide(1, 0) }.to raise_error(ZeroDivisionError)
    end
  end
end
