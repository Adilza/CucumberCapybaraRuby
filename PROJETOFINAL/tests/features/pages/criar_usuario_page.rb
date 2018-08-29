class User < SitePrism::Page
    set_url '/users/new'

    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'

    element :criar , 'input[value="Criar"]'


    def preencher_usuario
        nome.set 'Adilza'
        sobrenome.set 'Mattos'
        email.set 'adilzamattos@gmail.com'
        endereco.set 'rua 10 de janeiro'
        universidade.set 'Cairu'
        profissao.set 'Analista de teste'
        genero.set 'Feminino'
        idade.set '33'
        criar.click 
        
    end

end