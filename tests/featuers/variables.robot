*** Settings ***
Documentation        Aqui neste arquivo estaram presentes todos os tipos de variáveis que iremos estudar ao longo de treinamento.

Library    SeleniumLibrary
Library    Telnet

Test Setup    Abrir o meu navegador
Test Teardown    Fechar Browser

*** Variables ***


# Variável Simple
${NOME}        ALEJANDRO ROMERO

# Variável Lista
@{FRUTAS}        {Banana, Maçã, Melancia, Abacaxi}

# Variável dicionário
&{CARRO_MODELO}
...    Marca=Nissan
...    Cor=Preto        Modelo=Sentra SL        Ano=2016

${URL}    https://www.facebook.com/mariabotonesj
${BROWSER}    chrome



*** Test Cases ***

Cenario: Buscando uma roupa
    Dado que eu esteja na tela Home do site
    Quando pesquisar o produto
    Então o produto deve ser apresentado com sucesso



Validar abertura do Browser
    [Tags]    BROWSER
    Abrir o meu navegador
    Fechar Browser

Validar abertura do Facebook
    [Tags]    FACEBOOK
    Abrir o meu navegador
    Fechar Browser

Validar soma de dois números
    [Tags]    SOMA
    Somar dois números    587    1234
    Somar o 464 mais o "464" 

*** Keywords ***

Dado que eu esteja na tela Home do site


Quando pesquisar o produto


Então o produto deve ser apresentado com sucesso




Abrir o meu navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar Browser
    Capture Page Screenshot
    Close Browser

Somar dois números
    [Arguments]    ${NUM_A}    ${NUM_B}
        ${SOMA}    Evaluate    ${NUM_A}+${NUM_B}
        [Return]    ${SOMA}

Somar o ${NUM_A} mais o ${NUM_B}
    ${SOMA}    Evaluate    ${NUM_A}+${NUM_B}
    Log to console    ${SOMA}