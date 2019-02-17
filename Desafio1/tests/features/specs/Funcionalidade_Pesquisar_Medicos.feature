#language: pt

Funcionalidade: Pesquisar médicos
@positivo
Cenario: Realizar pesquisa da lista de medicos no rio de janeiro
    Dado que estou na tela do guia médico					
    Quando pesquiso Ortopedista  no estado  rio de janeiro  e  cidade rio de janeiro					
    Então valido a especialidade e cidade					

@negativo
Cenario: Realizar pesquisa da lista de medicos no rio de janeiro exceto os de São Paulo
    Dado que estou na tela do guia médico					
    Quando pesquiso Ortopedista  no estado  rio de janeiro  e  cidade rio de janeiro					
    Então valido ausencia de medicos de São Paulo					