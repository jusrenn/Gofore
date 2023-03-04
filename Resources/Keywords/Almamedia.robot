*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Navigoi sivulta edelleen Kotikokki-lehden sivulle kuvan kautta.
    Sleep    1
    Click Button    ${cookiesButton}
    Click Link    ${palveluLink}
    Click Link    ${tuotteetPalvelutLink}
    Set Focus To Element    ${kotikokkiLink}
    Sleep    1
    Click Link    ${kotikokkiLink}
    Sleep    2
    ${wh}    Get Window Handles
    Switch Window    ${wh}[1]