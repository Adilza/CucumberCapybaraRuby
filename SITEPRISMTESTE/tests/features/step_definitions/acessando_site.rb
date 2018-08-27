Quando("acessar a url") do
    @home =PaginaInicial.new  
    # instacia da classe PaginaInicial
    @home.load
    # carrega url
    sleep(5)
  end
  
  Entao("verifico se estou na pagina inicial") do
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home',url: true)
  end
  