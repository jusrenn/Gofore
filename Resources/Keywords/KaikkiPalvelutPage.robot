*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Klikkaa ja menee Kotikokiin sivulle
    Set Focus To Element    ${kotikokkiLink}
    Sleep    1
    Click Link    ${kotikokkiLink}
    Sleep    2
    ${wh}    Get Window Handles
    Switch Window    ${wh}[1]