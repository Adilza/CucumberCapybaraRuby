module Helper

    def tirar_foto(nome_arquivo, resiltado)
        caminho_arquivo ="report/screenshots/test_#{resiltado}"

        foto= "#{caminho_arquivo}/#{nome_arquivo}.png"
        page.save_screenshot(foto)
        embed(foto, 'imagem/png', "Veja aqui")
    end
    
end