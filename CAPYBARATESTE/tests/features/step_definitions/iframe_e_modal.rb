Quando("entro no iframe preencho os campos") do
    visit '/mudancadefoco/iframe'
    #mudando o foco para o iframe
    within_frame('id_do_iframe')do
    #mostrando as ações dentro do iframe
    fill_in(id 'first_name', with: 'Adilza')
    fill_in(id 'lest_name', with: 'Mattos')
    end
 end
  
  Quando("entro no modal e verifico o texto") do
    visit '/mudancadefoco/modal'
    find('a[href="#modal1"]').click
    within('#modal1')do
    texto =find('h4')
    expect(texto.text).to eql 'Modal Teste'
    find('.modal-close').click
  end
  end
 