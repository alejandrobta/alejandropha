*** Settings ***
Documentation    Aqui estão todos os elementos da tela Login

*** Variables ***
&{LOGIN}
...        BTN_CADASTRO=//a[@href="/signup"]
...        INPUT_EMAIL=spree_user_email
...        INPUT_SENHA=spree_user_password
...        BTN_ENTRAR=//input[@value="Entrar"]
...        ERROR_MESSAGE=//div[@class='flash error']