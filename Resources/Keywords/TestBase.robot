*** Settings ***
Library    SeleniumLibrary

Variables    ../TestData/TestData.py

*** Keywords ***
Setup
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close Browser
    Close All Browsers