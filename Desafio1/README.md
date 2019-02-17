# RUBY + CUCUMBER + RSPEC - básico

Repositório destinado para aprendermos a usar testes automatizados com o Protractor.

## Pré-requisitos para rodar localmente
* [Instalação no Windowns](https://medium.com/qaninja/instalando-ruby-cucumber-e-capybara-no-windows-10-acb1fe833a95)

#### Atenção: É necessário que a máquina esteja com todas as dependencias instaladas:
* Usar o comando abaixo dentro da pasta raíz tests :

```bundle install``` 

(raíz: `/tests` e na pasta: `/Desafio1`)

## Iniciando os passos para rodar os testes
* Entrar pelo terminal na raíz do projeto
* Usar o comando ```cucumber```


## Resumindo o projeto
* A pasta principal é a `Desafio1` e dentro dela temos a `features`
, e os `cenarios`
* `Funcionalidade_Pesquisar_Medicos.feature` são os cenários 
* `page_objetcs` ficam nossos elementos e métodos da página
* `step_definitions` são nossos steps gerados pelo cucumber
* `results` será uma a pasta onde o cucumber colocará o prints dos resultados na pasta `test_failed` caso os casos falhem ou na pasta `test_passed` em caso de sucess
* `helper` são métodos auxiliáres que podemos usar dentro de todo o projeto
* `env` nosso arquivo de configuração
* `hooks` são os nossos afters e before
* `gemfile` arquivo com nossas dependências 

-------------------------------------
#### Dúvidas: bruoacks@gmail.com
-------------------------------------