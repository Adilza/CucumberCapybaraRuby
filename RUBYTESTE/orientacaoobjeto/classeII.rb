
# overrinding (permite que um metodo da classe filha tenha comportamento diferente ao metodo herdado da classe mae)

class ClasseMae

    def correr
        puts 'a mae corre'
    end
    
end

# class ClassFilha < ClasseMae
#     def correr
#         puts 'a filha corre'
        
#     end
# end

# super (ao ser invovado pertimite q a classe filha execute exatamente a o mesmo metodo herdado da classe mae)
class ClassFilha < ClasseMae
    def correr
        puts super
        puts 'cansei'
        
    end
end


objeto = ClassFilha.new

objeto.correr