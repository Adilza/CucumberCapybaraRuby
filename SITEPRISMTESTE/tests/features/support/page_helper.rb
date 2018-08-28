Dir[File.join(File.dirname(__FILE__),'../pages/*_page.rb')].each{|file|require file}

module PageObjetcs

    def home

        @home ||= MapeandoElementosPage.new
    
    end

    
end