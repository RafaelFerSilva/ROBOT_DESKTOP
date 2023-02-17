*** Settings ***
Documentation    Arquivo de keywords relacionadas ao page objetc da página home

Library    SeleniumLibrary
Library    String

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/locators/Home/home_locators.robot

*** Keywords ***

Validar se o menu de navegação está visivel na home page
        
    Wait Until Element Is Visible    ${LOGIN_SECTION}

Validar o título da seção de login está visível 

  Wait Until Element Is Visible     ${LOGIN_SECTION_TITLE} 
