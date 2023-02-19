*** Settings ***
Library     SeleniumLibrary


*** Variables ***    #Variables globales
${URL}          https://admin-demo.nopcommerce.com/login
${BROWSER}      chrome


*** Test Cases ***
Login Test
    Lancer le navigateur
    Input Text    xpath://input[@id='Email']    admin@yourstore.com
    Input Password    xpath://input[@id='Password']    admin
    Click Button    xpath://button[@class='button-1 login-button']


*** Keywords ***    #personalise
Lancer le navigateur
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
