*** Settings ***
Documentation        Aqui neste arquivo estaram presentes todos os tipos de variáveis que iremos estudar ao longo de treinamento.

Resource    ../../src/config/package.robot


Test Setup    Abrir o meu navegador
Test Teardown    Fechar Browser


*** Test Cases ***

Cenario: Buscando uma Bag
    [Tags]    BUSCA
    Dado que eu esteja na tela Home do site
    Quando pesquisar o produto    Bag
    Então o produto deve ser apresentado com sucesso
    E a seguinte mensagem deve ser apresentada    Resultados da busca por 'Bag'


Cenario: Buscar MUG
    [Tags]    MUG
    Dado que eu esteja na tela Home do site
    Quando pesquisar o produto    Mug
    E a seguinte mensagem deve ser apresentada    Resultados da busca por 'Mug'


Cenario: Validando cadastro com sucesso no learningprime
    [Tags]    CADASTRO
    Dado que eu esteja na de cadastro
    E informe todos os dados necessários
    Quando finalizar o cadastro
    Então devo ser direcionado para a tela home do site
    E a seguinte mensagem deve ser apresentada    Bem vindo! Seu cadastro foi feito com sucesso


Cenario: Validar login com senha incorreta
    [Tags]    SUITE
    Dado que eu esteja na tela de login
    Quando informar uma senha incorreta
    Então a mensagem "Email ou senha inválida." deve ser apresentada



Cenario: Validar login com email incorreto
    [Tags]    SUITE
    Dado que eu esteja na tela de login
    Quando informar um email incorreta
    Então a mensagem "Email ou senha inválida." deve ser apresentada





