
Dado("que eu faça requesição de todas as marcas") do
begin 
     response = HTTParty.get("http://desafioonline.webmotors.com.br/api/OnlineChallenge/Make")
     log JSON.pretty_generate(JSON.parse(response.body))
     
 end
end
  
  Então("valido o código de resposta esperado marca") do
    expect respond_to eq 200
    log "Validando o retorno do codigo 200"
  end