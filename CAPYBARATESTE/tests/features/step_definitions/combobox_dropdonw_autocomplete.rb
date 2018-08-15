Quando("interajo com dropdonw e select") do
    visit '/buscaelementos/dropdowneselect'
    find('.btn.dropdown-button').click
    find('#dropdown3').click

    # select
    select 'Chrome', from:'dropdown'
    # sleep (3)
    find('option[value="2"]').select_option
    # sleep (3)

end
  
  Quando("preencho o autocomplete") do
    visit '/widgets/autocomplete'
    find('#autocomplete-input').set 'Rio de Jan'
    find('ul', text: 'Rio de Janeiro').click
    sleep 5
  end