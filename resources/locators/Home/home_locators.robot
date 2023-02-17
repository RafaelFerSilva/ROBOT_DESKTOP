*** Settings ***
Documentation    Arquivo de locators e variáveis para tela home

*** Variables ***

${LOGIN_SECTION}                //section[contains(@class, "sign")]
${LOGIN_SECTION_TITLE}          ${LOGIN_SECTION}/h1[normalize-space()="Já estuda com a gente?"]
