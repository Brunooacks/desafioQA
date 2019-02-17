Dado("que estou na tela do guia médico") do
  home.load   
end

Quando("pesquiso Ortopedista  no estado  rio de janeiro  e  cidade rio de janeiro") do
  home.pesquisar
end

Então("valido a especialidade e cidade") do
  
  especialidade = "//div[@id='link_interno_qualificacao_prestador']/..//span[contains(text(),'Ortopedia e Traumatologia')][1]"
  cidade = "//div[@id='link_interno_qualificacao_prestador']/..//p[text()='Rio de Janeiro'][1]"
  page.has_xpath?(especialidade, count: 20)
  page.has_xpath?(cidade, count: 20)
  
end

Então("valido ausencia de medicos de São Paulo") do  
  saopaulo = "//div[@id='link_interno_qualificacao_prestador']/..//p[text()='São Paulo']"
  page.has_xpath?(saopaulo, count: 20)
  home.page_02.click
  page.has_xpath?(saopaulo, count: 20)
  page.execute_script('window.scrollBy(0,5500)')
  home.page_03.click
  page.has_xpath?(saopaulo, count: 20) 
  page.execute_script('window.scrollBy(0,5500)') 
end
