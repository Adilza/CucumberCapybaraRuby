Quando("eu realizado acoes com o teclado") do
    visit '/users/new'    
    find('#user_name').send_keys(:page_down)
        #buscando pelo input
    find('input[value="Criar"]').send_keys(:enter)
    sleep(4)
end

  