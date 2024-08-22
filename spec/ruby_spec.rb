require 'rspec'                     # Esto carga la biblioteca rspec
require_relative '../lib/ruby'      # Esto carga el archivo ruby.rb que vas a probar

RSpec.describe 'Pruebas para ruby.rb' do  # Describe el conjunto de pruebas

  it 'verifica si intro devuelve un array' do  # Primer caso de prueba
    expect(intro([1, 2, 3])).to be_a(Array)   # Espera que el método intro devuelva un Array
  end

  it 'verifica si nombre devuelve una cadena' do  # Segundo caso de prueba
    expect(nombre('Ismael')).to be_a(String)      # Espera que el método nombre devuelva un String
  end

  it 'verifica si datos? devuelve un booleano' do  # Tercer caso de prueba
    expect(datos?([1, 2, 3])).to eq(true).or eq(false)  # Espera que datos? devuelva true o false
  end

end
