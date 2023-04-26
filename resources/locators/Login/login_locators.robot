*** Settings ***
Documentation    Arquivo de locators e variáveis para tela de login

*** Variables ***

${SECAO_LOGIN}            id=LoginAccess
${INPUT_EMAIL}            id=login-email
${INPUT_PASSWORD}         id=password
${BTN_LOGIN}              //button[contains(@class, "btn-login")]
${ERROR_INFO}             //div[contains(@class, "error-info")]//p[normalize-space()="E-mail ou senha incorretos."]
