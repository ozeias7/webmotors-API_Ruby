
Dado("que eu faça requesição de todos os modelos") do
begin 
     response = HTTParty.get("http://desafioonline.webmotors.com.br/api/OnlineChallenge/Model?MakeID=2")
     log JSON.pretty_generate(JSON.parse(response.body))
     
 end
end
  
  Então("valido o código de resposta esperado modelo") do
    expect respond_to eq 200
    log "Validando o retorno do codigo 200"
  end