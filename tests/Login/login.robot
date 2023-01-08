Language: Brazilian Portuguese

*** Settings ***
Documentation    Teste da tela de Login

Library    FakerLibrary    locale=pt_BR

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/keywords/Login/login_keywords.robot

Suite Setup    Abrir o navegador no site da Orbia    
Suite Teardown    Fechar o Browser 

*** Test Cases ***

Deve ser exibido um erro quando um usuário não cadastrado tenta logar no site da Orbia
    [Setup]    Acessar a tela de login do site da Orbia

    ${email}=    FakerLibrary.Email
    ${password}=    FakerLibrary.Password
    
    Adicionar dados para login    ${email}    ${password}
    Clicar no botão Acessar a Orbia e validar se o alert de erro foi exibido na tela    Verifique login e senha para continuar

Cenário: Deve ser exibido um erro quando um usuário não cadastrado tenta logar no site da Orbia
    
    Dado o usuário esteja na tela de login
    Quando adicionar dados de um usuário não cadastrado no site da Orbia
    E Clicar no botão Acessar a Orbia na tela de login
    Então o alert de erro para usuários não cadastrados deve ser exibido na tela