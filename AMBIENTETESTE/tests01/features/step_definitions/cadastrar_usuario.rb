Quando("eu cadastro um usuario") do
  user_page.load
  @user = OpenStruct.new
  @user.name = Faker::Name.name
  @user.lastname = Faker::Name.last_name 
  @user.email = Faker::Internet.email
  @user.endereco = Faker::Address.street_name
  @user.universidade = Faker::University.name
  user_page.criar_usuario(@user)
end

Então("eu verifico se o usuario foi cadastrado com sucesso.") do
  expect(user_page.mensagem.text).to eq 'Usuário Criado com sucesso'
end