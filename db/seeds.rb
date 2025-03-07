puts "Limpando database"
Power.destroy_all
puts "Database limpo"

puts "Criando powers"
powers = [
  { user_id: 1, name: "Super Força", price: 99.99, description: "Aumenta sua força em 10x", category: "Físico" },
  { user_id: 1, name: "Teletransporte", price: 199.99, description: "Permite viajar instantaneamente para qualquer lugar", category: "Espacial" },
  { user_id: 1, name: "Invisibilidade", price: 149.99, description: "Faz com que você fique invisível por um período", category: "Stealth" },
  { user_id: 1, name: "Velocidade Extrema", price: 129.99, description: "Corre mais rápido que um carro de corrida", category: "Físico" },
  { user_id: 1, name: "Controle do Tempo", price: 299.99, description: "Permite pausar, acelerar ou retroceder o tempo", category: "Temporal" },
  { user_id: 1, name: "Manipulação de Elementos", price: 179.99, description: "Controle sobre fogo, água, terra e ar", category: "Elemental" },
  { user_id: 1, name: "Leitura de Mentes", price: 189.99, description: "Consegue ouvir os pensamentos das pessoas", category: "Psíquico" },
  { user_id: 1, name: "Cura Instantânea", price: 249.99, description: "Regenera ferimentos em segundos", category: "Regeneração" },
  { user_id: 1, name: "Voo", price: 159.99, description: "Permite que você flutue e voe pelos céus", category: "Aéreo" },
  { user_id: 1, name: "Camuflagem", price: 119.99, description: "Adapta sua aparência ao ambiente", category: "Stealth" }
]

powers.each do |power|
  Power.create!(power)
end

puts "Criados #{Power.count} poderes!"
