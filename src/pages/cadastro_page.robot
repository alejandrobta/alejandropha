*** Settings ***
Documentation    Aqui estão todos os elementos da tela Home

*** Variables ***
&{CADASTRO}
...        BTN_LOGIN=//a[@href="/login"]
...        BTN_CRIAR=//a[@href="/signup"]
...        INPUT_EMAIL=spree_user_email
...        INPUT_SENHA=spree_user_password
...        INPUT_CONFIRM_SENHA=spree_user_password_confirmation
...        BTN_CRIAR_CRIAR=//input[@value="Criar" and @type="submit"]
...        TXT_ACCOUNT=//a[@href="/account"]