*** Settings ***
Documentation    Aqui estarão os setups e os teardowns do projeto

Resource    ../config/package.robot

*** Variables ***

${URL}    https://learningprime.com.br/
${BROWSER}    chrome




*** Keywords ***

Abrir o meu navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar Browser
    Capture Page Screenshot
    Close Browser
