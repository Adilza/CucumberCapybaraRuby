# classe começa com letra maiuscula
# uma classe é composta por atributos, metodos e construtores
class ClassName

    # mesma coisa que get e set do java
     attr_accessor :nome

    # so permite ler
    # attr_reader :nomeone

    # so permite escrever
    # attr_writer :momedois



    # def nome
    #     @nome
        
    # end

    # def nome=(nome)
    #     @nome=:nome
    # end


    # metodo
    # nome dele tem q ser tudo minusculo
    # e se for nome compostp tem que ter o _ entre as palavras 
    def metodo
    # corpo do metodo
    puts 'corpo do metodo'

    end

    def metodo_compost
        # corpo do metodo
        puts 'corpo do metodo composto'
            
    end
    
end

class Heranca < ClassName
end


objeto = ClassName.new
objeto.nome = 'Adilza'

puts objeto.nome
puts objeto.metodo
puts objeto.metodo_compost

objeto_heranca = Heranca.new

puts objeto_heranca.metodo_compost

