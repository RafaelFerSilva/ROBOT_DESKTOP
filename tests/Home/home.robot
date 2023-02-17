*** Settings ***
Documentation    Testes da tela home

Library    FakerLibrary    locale=pt_BR

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/keywords/Home/home_keywords.robot

Suite Setup    Abrir o navegador no site da Alura    
Suite Teardown    Fechar o Browser 

*** Test Cases ***

Deve ser exibida a página de login ao acessar o site da Alura

    Validar se a seção de login está visível na home page
