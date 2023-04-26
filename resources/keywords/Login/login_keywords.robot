*** Settings ***
Documentation    Keywords para login

Library    FakerLibrary    locale=pt_BR

Resource    ${EXECDIR}/resources/pages/Login/login_pages.robot

*** Keywords ***

Adicionar dados para login
    [Arguments]    ${email}    ${password}

    Adicionar um e-mail no input para login    ${email}
    Adicionar um valor no input de senha    ${password}

Clicar no botão ENTRAR e validar se o alert de erro foi exibido na tela
    [Arguments]    ${mensagem_erro}
    
    Clicar no botão ENTRAR
    Verificar se a mensagem de erro para validar login e senha está visível na tela de login    ${mensagem_erro}

o usuário esteja na tela de login
    Title Should Be    Login | Alura - Cursos online de tecnologia

adicionar dados de um usuário não cadastrado no site da Alura
    
    ${email}=    FakerLibrary.Email
    ${password}=    FakerLibrary.Password
    
    Adicionar dados para login    ${email}    ${password}

o alert de erro para usuários não cadastrados deve ser exibido na tela
    
    Verificar se a mensagem de erro para validar login e senha está visível na tela de login    E-mail ou senha incorretos.
