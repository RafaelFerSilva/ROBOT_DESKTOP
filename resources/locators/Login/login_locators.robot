*** Settings ***
Documentation    Arquivo de locators e variáveis para tela de login

*** Variables ***

${SECAO_LOGIN}            id:LoginAccess
${INPUT_EMAIL}            id:loginEmail
${INPUT_PASSWORD}         id:password
${BTN_LOGIN}              id:login
${ORBIA_LABEL_ERROR_LOG_ON}        //div[@id="orbiaLabelErrorLogOn"]//label[text()="$$"]
