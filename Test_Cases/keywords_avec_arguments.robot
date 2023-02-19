*** Settings ***
Library     SeleniumLibrary


*** Variables ***    #Variables globales
${URL1}         https://admin-demo.nopcommerce.com/login
${BROWSER1}     chrome
${URL2}         https//:google.com
${BROWSER2}     chrome


*** Test Cases ***
Login Test
    Lancer le navigateur    ${URL1}    ${BROWSER1}
    Input Text    xpath://input[@id='Email']    admin@yourstore.com
    Input Password    xpath://input[@id='Password']    admin
    Click Button    xpath://button[@class='button-1 login-button']

Search Google Test
    Lancer le navigateur    ${URL2}    ${BROWSER2}


*** Keywords ***    #personalise
Lancer le navigateur
    [Arguments]    ${URL_SITE}    ${NAVIGATEUR}
    Open Browser    ${URL_SITE}    ${NAVIGATEUR}
    Maximize Browser Window
