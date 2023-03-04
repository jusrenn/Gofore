*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Menee Palvelut ja tuotteet sivuun
    Sleep    1
    Click Button    ${cookiesButton}
    Click Link    ${palveluLink}
    Click Link    ${tuotteetPalvelutLink}

