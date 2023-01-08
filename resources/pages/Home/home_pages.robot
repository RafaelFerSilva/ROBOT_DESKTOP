*** Settings ***
Documentation    Arquivo de keywords relacionadas ao page objetc da página home

Library    SeleniumLibrary
Library    String

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/locators/Home/home_locators.robot

*** Keywords ***

Validar se o menu de navegação está visivel na home page
        
    Wait Until Element Is Visible    ${MENU_NAVEGACAO}

Validar se o menu do usuário está visível
    
    Wait Until Element Is Visible    ${USER_MENU}
