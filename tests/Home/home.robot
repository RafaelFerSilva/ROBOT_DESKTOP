*** Settings ***
Documentation    Testes da tela home

Library    FakerLibrary    locale=pt_BR

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/keywords/Home/home_keywords.robot

Suite Setup    Abrir o navegador no site da Orbia    
Suite Teardown    Fechar o Browser 

*** Test Cases ***

Deve ser exibido o menu de navegação e o menu do usuário ao acessar o site da Orbia

    Validar se o menu de navegação e o menu do usuário está visíveis na home page
