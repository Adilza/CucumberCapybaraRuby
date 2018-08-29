Quando("eu cadastro meu Usuario") do
   user.load
   user.preencher_usuario

  sleep (5)

  end
  
  Entao("verifico se o Usuario foi cadastrado") do
   @texto = find('#notice')
   expect(@texto.text).to eql 'Usuário Criado com sucesso'
  end