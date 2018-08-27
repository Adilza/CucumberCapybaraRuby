Quando("eu cadastro o usuário") do
    visit '/users/new'
    fill_in(id:'user_name', with: 'Deise')
    find_by_id('user_lastname').set('Matos')
    find('#user_email').send_keys('consultoriari@hotmail.com')
    find('input[value="Criar"]').click
  end
  
  Entao("verifico se o usuario foi cadastrado.") do
    texto =find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
    
  end
  
  Quando("eu edito um usuário") do
    sleep(3)
    find('.btn.waves-light.blue').click

    fill_in(id:'user_name', with: 'Deise Cristina')
    find('.btn.waves-effect.green').click
    
  end
  sleep(3)
  Entao("verifico se o usuario foi editado.") do
    texto =find('#notice')
    expect(texto.text).to eql 'Seu Usuário foi Atualizado!'
  end