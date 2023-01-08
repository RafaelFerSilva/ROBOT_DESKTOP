*** Settings ***
Documentation    Arquivo de keywords relacionadas ao page objetc da página de login

Library    SeleniumLibrary
Library    String

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/locators/login/login_locators.robot
Resource    ${EXECDIR}/resources/locators/Home/home_locators.robot

*** Keywords ***

Clicar no menu do usuário
    
    Click If Element Is Visible    ${USER_MENU}

Verificar se a tela de login está visível
    
    Wait Until Element Is Visible    ${SECAO_LOGIN}

Validar se o campo de senha está visível na tela de login
    
    Wait Until Element Is Visible    ${INPUT_PASSWORD}

Adicionar um e-mail no input para login
    [Arguments]    ${email}

    Input Text If Element Is Visible    ${INPUT_EMAIL}    ${email}
    Textfield Value Should Be    ${INPUT_EMAIL}    ${email}

Adicionar uma valor no input de senha
    [Arguments]   ${password}

    Input Password    ${INPUT_PASSWORD}    ${password}
    Textfield Value Should Be    ${INPUT_PASSWORD}    ${password}

Clicar no botão Acessar a Orbia na tela de login
    
    Click If Element Is Visible    ${BTN_LOGIN} 

Verificar se a mensagem de erro para validar login e senha está visível na tela de login
    [Arguments]    ${mensagem_erro}

    ${str}=	    Replace String    ${ORBIA_LABEL_ERROR_LOG_ON}	$$    ${mensagem_erro}
    Wait Until Element Is Visible    ${str}