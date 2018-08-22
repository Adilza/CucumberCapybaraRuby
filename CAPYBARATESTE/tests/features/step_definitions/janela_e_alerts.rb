Quando("eu entro na janela e verifico a mensagem") do
    visit '/mudancadefoco/janela'
    
    #  janela recebe uma janela que foi aberta pelo link
    janela = window_opened_by do
        click_link 'Clique aqui'
    end
    # muda de foco para a janela 
    within_window  janela do 

        # verificando se a url é igual a da janela q abriu
        expect(current_url).to eq 'http://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        
        # buscando pela class 'red-text text-darken-1 center' 
        @mensagem = find('.red-text.text-darken-1.center')
        
        # verificando se a mensagem é exibida confere com o texto na janela
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

        janela.close

    end

    # segunda opçao
        windows.last

        click_link 'Clique aqui'

        # mudando para ultima aba
        switch_to_window windows.last

        expect(current_url).to eq 'http://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

        windows.last.close
       
    end 
  
  Quando("eu entro no alerts e verifico faco a ação") do
    visit 'mudancadefoco/alert'
   
    find('button[onclick="jsAlert()"]').click
    # aceita uma alerta na pagina
     
   
    page.accept_alert

    find('button[onclick="jsConfirm()"]').click
   
    # cancela um alerta na pagina
   
    page.dismiss_confirm

    find('button[onclick="jsPrompt()"]').click
   
    # aceita uma texto no alerts
    page.accept_prompt(with: 'Adilza Mattos')
    # cancela um alert com prompt sem digitar 

    page.dismiss_prompt
   
   
  end