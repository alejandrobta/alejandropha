*** Settings ***
Documentation    Aqui estarão nossas keywords de cadastro

Resource    ../config/package.robot



*** Keywords ***

Dado que eu esteja na de cadastro
    Wait Until Element Is Visible    ${CADASTRO.BTN_LOGIN}
    Click Element                    ${CADASTRO.BTN_LOGIN}

    Wait Until Element Is Visible    ${CADASTRO.BTN_CRIAR}
    Click Element                    ${CADASTRO.BTN_CRIAR}

    Wait Until Page Contains    Novo Cliente

E informe todos os dados necessários
    ${EMAIL_FAKER}                                   FakerLibrary.Email
    Input Text    ${CADASTRO.INPUT_EMAIL}            ${EMAIL_FAKER}
    Input Text    ${CADASTRO.INPUT_SENHA}            123456789
    Input Text    ${CADASTRO.INPUT_CONFIRM_SENHA}    123456789

Quando finalizar o cadastro
    Click Element    ${CADASTRO.BTN_CRIAR_CRIAR}

Então devo ser direcionado para a tela home do site
    Wait Until Element Is Visible    ${CADASTRO.TXT_ACCOUNT}
