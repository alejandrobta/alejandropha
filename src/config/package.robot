*** Settings ***
Documentation    O Package.robot será o nosso gerenciador de dependencias do projeto. Sendo assim precisaremos apenas instanciar esse package.

Library    SeleniumLibrary
Library    Telnet
Library    DebugLibrary
Library    FakerLibrary


Resource    ../keywords/kws_login.robot
Resource    ../keywords/kws_cadastro.robot
Resource    ../keywords/kws_busca.robot

Resource    ../pages/cadastro_page.robot
Resource    ../pages//home_page.robot
Resource    ../pages/login_page.robot

Resource    hooks.robot
