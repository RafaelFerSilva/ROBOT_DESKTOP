*** Settings ***
Documentation    Arquivo de keywords genéricas que podem ser utilizadas em diversas ocasiões

Library    Browser

*** Variables ***
${LOGIN URL}              https://cursos.alura.com.br/
${BROWSER}                chromium
${HEADLESS}               false
${VIEWPORT}               {'width': 1280, 'height': 720}
${BROWSER_OPTIONS}        add_experimental_option('excludeSwitches', ['enable-logging']);add_argument('--disable-dev-shm-usage');add_argument("--disable-popup-blocking");add_argument("--ignore-certificate-errors")

*** Keywords ***

Abrir o navegador no site da Alura
    New Browser     browser=${BROWSER}      headless=${HEADLESS}
    New Context     viewport=${VIEWPORT}
    New Page        ${LOGIN URL} 
    Get Title    ==       Login | Alura - Cursos online de tecnologia

Fechar o Browser 
    Close Browser

Mouse Over If Element Is Visible
    [Arguments]     ${element_locator}

    Wait Until Element Is Visible    ${element_locator}
    Mouse Over    ${element_locator} 

Click If Element Is Visible
    [Arguments]     ${element_locator}

    Mouse Over If Element Is Visible    ${element_locator}
    Click Element    ${element_locator}

Input Text If Element Is Visible
    [Arguments]     ${element_locator}    ${text}

    Wait Until Element Is Visible    ${element_locator}
    Input Text    ${element_locator}    ${text}
