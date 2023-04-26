*** Settings ***
Documentation    Arquivo de keywords relacionadas ao page objetc da página de login

Library    Browser
Library    String

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/locators/login/login_locators.robot

*** Keywords ***

Validar se o campo de senha está visível na tela de login
    
    Wait Until Element Is Visible    ${INPUT_PASSWORD}

Adicionar um e-mail no input para login
    [Arguments]    ${email}

    Fill Text    ${INPUT_EMAIL}    ${email}
    Get Text    ${INPUT_EMAIL}      ==    ${email}

Adicionar um valor no input de senha
    [Arguments]   ${password}

    Fill Secret    ${INPUT_PASSWORD}    $password
    Get Text    ${INPUT_PASSWORD}      ==    ${password}

Clicar no botão ENTRAR
    
    Click If Element Is Visible    ${BTN_LOGIN} 

Verificar se a mensagem de erro para validar login e senha está visível na tela de login
    [Arguments]    ${mensagem_erro}

    ${str}=	    Replace String    ${ERROR_INFO}	  $$    ${mensagem_erro}
    Wait Until Element Is Visible    ${str}
