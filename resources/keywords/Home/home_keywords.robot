*** Settings ***
Documentation    Keywords para home page

Resource    ${EXECDIR}/resources/pages/Home/home_pages.robot

*** Keywords ***

Validar se o menu de navegação e o menu do usuário está visíveis na home page
    
    Validar se o menu de navegação está visivel na home page
    Validar se o menu do usuário está visível