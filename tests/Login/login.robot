Language: Brazilian Portuguese

*** Settings ***
Documentation    Teste da tela de Login

Library    FakerLibrary    locale=pt_BR

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/keywords/Login/login_keywords.robot

Suite Setup    Abrir o navegador no site da Alura    
Suite Teardown    Fechar o Browser 

*** Test Cases ***

Deve ser exibido um erro quando um usuário não cadastrado tenta logar no site da Alura

    ${email}=    FakerLibrary.Email
    ${password}=    FakerLibrary.Password
    
    Adicionar dados para login    ${email}    ${password}
    Clicar no botão ENTRAR e validar se o alert de erro foi exibido na tela    E-mail ou senha incorretos.

Cenário: Deve ser exibido um erro quando um usuário não cadastrado tenta logar no site da Alura
    
    Dado o usuário esteja na tela de login
    Quando adicionar dados de um usuário não cadastrado no site da Alura
    E Clicar no botão ENTRAR
    Então o alert de erro para usuários não cadastrados deve ser exibido na tela
