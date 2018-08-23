Quando("eu faco um upload de arquivo") do
    visit '/outros/uploaddearquivos'  
    # attach_file('upload', 'C:\Repositorio\CodigosForaDoGit\CucumberCapybaraRuby\CAPYBARATESTE\tests\Image_teste.png', make_visible: true)
    # sleep(4)

    @foto= File.join(Dir.pwd,'/Image_teste.png')
    attach_file('upload', @foto, make_visible: true)
    sleep(4)
end