Quando("clico em botoes") do
    visit '/'
    # click_link_on_button são identicos
    click_on('Começar Automação Web') 
    
    visit '/buscaelementos/botoes'
    click_button(class:'btn waves-light')
    find('a[onclick="ativaedesativa2()"]').click

    find('a[onclick="ativaedesativa2()"]').double_click
    find('a[onclick="ativaedesativa3()"]').right_click
     
    visit '/'
    click_link('Batista no Medium')
    sleep(5)
    
end