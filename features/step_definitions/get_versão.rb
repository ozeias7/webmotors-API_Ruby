
Dado("que eu faça requesição de todos as versões") do
begin 
     response = HTTParty.get("http://desafioonline.webmotors.com.br/api/OnlineChallenge/Version?ModelID=7")
     log JSON.pretty_generate(JSON.parse(response.body))
     
 end
end
  
  Então("valido o código de resposta esperado versão") do
    expect respond_to eq 200
    log "Validando o retorno do codigo 200"
  end