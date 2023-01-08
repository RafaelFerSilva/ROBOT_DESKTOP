*** Settings ***
Documentation    Keywords para login

Library    FakerLibrary    locale=pt_BR

Resource    ${EXECDIR}/resources/pages/Login/login_pages.robot
Resource    ${EXECDIR}/resources/pages/Home/home_pages.robot

*** Keywords ***

Acessar a tela de login do site da Orbia
    
    Validar se o menu do usuário está visível
    Clicar no menu do usuário
    Verificar se a tela de login está visível

Adicionar uma senha no input para login
    [Arguments]    ${password}
    
    Validar se o campo de senha está visível na tela de login
    Adicionar uma valor no input de senha    ${password}

Adicionar dados para login
    [Arguments]    ${email}    ${password}

    Adicionar um e-mail no input para login    ${email}
    Adicionar uma senha no input para login    ${password}

Clicar no botão Acessar a Orbia e validar se o alert de erro foi exibido na tela
    [Arguments]    ${mensagem_erro}
    
    Clicar no botão Acessar a Orbia na tela de login
    Verificar se a mensagem de erro para validar login e senha está visível na tela de login    ${mensagem_erro}

o usuário esteja na tela de login
    Acessar a tela de login do site da Orbia

adicionar dados de um usuário não cadastrado no site da Orbia
    
    ${email}=    FakerLibrary.Email
    ${password}=    FakerLibrary.Password
    
    Adicionar dados para login    ${email}    ${password}

o alert de erro para usuários não cadastrados deve ser exibido na tela
    
    Verificar se a mensagem de erro para validar login e senha está visível na tela de login    Verifique login e senha para continuar