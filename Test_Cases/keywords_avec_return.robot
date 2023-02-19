*** Settings ***
Library     SeleniumLibrary


*** Variables ***    #Variables globales
${URL}          https://admin-demo.nopcommerce.com/login
${BROWSER}      chrome


*** Test Cases ***
Login Test
    ${Titre_recupere}=    Lancer le navigateur    ${URL}    ${BROWSER}    #Il s'agit des variables globales
    Log    ${Titre_recupere}
    Input Text    xpath://input[@id='Email']    admin@yourstore.com
    Input Password    xpath://input[@id='Password']    admin
    Click Button    xpath://button[@class='button-1 login-button']


*** Keywords ***    #personalise
Lancer le navigateur
    [Arguments]    ${URL1}    ${BROWSER1}    #Ces variables ne sont pas visibles ailleurs
    Open Browser    ${URL1}    ${BROWSER1}
    Maximize Browser Window
    #Pour recuperer le titre de la page=>Creation d'une variable scalaire pour stocker le titre de la page
    ${Titre_page}=    Get Title
    RETURN    ${Titre_page}    #Pour aue ce keyword nous retourne la valeur recuperee
