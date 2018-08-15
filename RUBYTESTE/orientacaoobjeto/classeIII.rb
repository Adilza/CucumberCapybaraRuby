=begin
    module ModuloNome

    # serve para agrupar classe, constantes e metodos
    # muito parecido com uma classe porém não pode ser instanciado nem herdado
    

    def metodo_padrao
        puts 'eu sou um modulo'
        
    end
end

class ClassName
    include ModuloNome
    
end

objeto= ClassName.new

objeto.metodo_padrao

=end 

class Cachorro

    def latir
        puts 'au au au'
        
    end
    
end

class CachorroGrande

    def latir
        puts 'au au'
    end
    
end

class Pessoa

    def agarra_cachorro(cachorro)
        cachorro.latir
    end
end

c1= Cachorro.new
c2=CachorroGrande.new

p= Pessoa.new
p.agarra_cachorro(c1)
p.agarra_cachorro(c2)