*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Klikkaa ja menee Kotikokiin sivulle
    Execute Javascript    window.scrollTo(0,300)
    Sleep    2
    Click Link    ${kotikokkiLink}
    Sleep    2
    ${wh}    Get Window Handles
    Switch Window    ${wh}[1]