class GuiaMedico < SitePrism::Page
    set_url '/guia-medico'

    element :click_option , :xpath, "//div"

    element :pesquisa, :css, "input[name='pesquisa']"
    element :botao_pesquisar, :xpath, "//button[contains(text(),'PESQUISAR')]"
    element :estado, :xpath, "//div[text()='Estado']/..//input[contains(@id,'react-select')]"
    element :cidade, :xpath, "//div[text()='Cidade']/..//input"
    element :regiao , :xpath, "//div[contains(text(), 'UNIMED RIO')]"
    element :botao_continuar , '.btn.btn-success'
    element :botao_cancelar , '.btn.btn-default.margin-right'
    element :sao_paulo_present, :xpath, "//div[@id='link_interno_qualificacao_prestador']/..//p[text()='São Paulo']"
    element :page_02 , :xpath, "//div[contains(@class,'pagination')]//a[text()='2']"
    element :page_03 , :xpath, "//div[contains(@class,'pagination')]//a[text()='3']"

    def searchClick(webElement,value)      
      click_option =  "//div[contains(@id,'#{webElement.sub!('-input', '')}-option-')][text()='#{value}']"
      find(:id, "#{webElement}-input").set(value)
      find(:xpath, click_option).click
     end
 
     def pesquisar
       pesquisa.set 'Ortopedista'
       botao_pesquisar.click
       searchClick('react-select-2-input', 'Rio de Janeiro')
       searchClick('react-select-3-input', 'Rio de Janeiro')
       regiao.click
       botao_continuar.click
       botao_pesquisar.click
     end

    

end 
