*** Settings ***
Documentation    Nosso primeiro teste

*** Keywords ***
Logar um texto
    [Arguments]    ${texto}

    Log    ${texto}
 
*** Test Cases ***
Nosso primeiro teste
    
    Logar um texto    Primeiro teste utilizando Robot Framework
