*** Settings ***
Documentation    Keywords para home page

Resource    ${EXECDIR}/resources/pages/Home/home_pages.robot

*** Keywords ***

Validar se a seção de login está visível na home page
    
    Validar se o menu de navegação está visivel na home page
    Validar o título da seção de login está visível 