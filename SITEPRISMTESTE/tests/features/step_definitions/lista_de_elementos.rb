Quando("mapeio uma tabela") do
    @lista_de_elementos = MapeandoLista.new
    
    @lista_de_elementos.load

    # verifica tamanho da tabela
    puts @lista_de_elementos.lista.size

    # pegando um determinado elemento na lista(array)
    puts @lista_de_elementos.lista[2].text

    expect(@lista_de_elementos.lista.size).to eql 24      
    
    # exibe elementos da lista
    
    @lista_de_elementos.lista.each do |listas|
        puts listas.text
    end 
end
  