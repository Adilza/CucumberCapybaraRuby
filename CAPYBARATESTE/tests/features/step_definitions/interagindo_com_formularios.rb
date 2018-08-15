Quando("eu faco cadastro") do
   visit '/users/new'
   fill_in(id:'user_name', with: 'Adilza')
   find_by_id('user_lastname').set('Mattos')
   find('#user_email').send_keys('adilzamattos@gmail.com')

   fill_in(id:'user_address', with: 'Rua Ibicuí')
   find_by_id('user_university').set('FVC')
   find('#user_profile').send_keys('Analista de Teste')

   find_by_id('user_gender').set('Feminino')
   find('#user_age').send_keys(33)
   sleep 5
    find('input[value="Criar"]').click
   
  end
  
  Então("verifico se fui cadastrado") do
   texto = find('#notice')

   expect(texto.text).to eql 'Usuário Criado com sucesso'
  endQuando("eu faco cadastro") do
   visit '/users/new'
   fill_in(id:'user_name', with: 'Adilza')
   find_by_id('user_lastname').set('Mattos')
   find('#user_email').send_keys('adilzamattos@gmail.com')

   fill_in(id:'user_address', with: 'Rua Ibicuí')
   find_by_id('user_university').set('FVC')
   find('#user_profile').send_keys('Analista de Teste')

   find_by_id('user_gender').set('Feminino')
   find('#user_age').send_keys(33)
   sleep 5
    find('input[value="Criar"]').click
   
  end
end
  Então("verifico se fui cadastrado") do
   texto = find('#notice')

   expect(texto.text).to eql 'Usuário Criado com sucesso'
  end