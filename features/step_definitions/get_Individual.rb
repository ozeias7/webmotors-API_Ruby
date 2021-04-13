
      Dado("que eu faça requesição de leitura de um registro") do                        
        begin 
            response = HTTParty.get("http://fakerestapi.azurewebsites.net/api/Activities/10")
            puts JSON.pretty_generate(JSON.parse(response.body))
            
        end
       end 
                                                                                     
                                                                                         
      Então("valido o código de um registro") do                                         

        expect respond_to eq 200
        puts "Validando o retorno do codigo 200"
    end                                                                                
                                                                                         