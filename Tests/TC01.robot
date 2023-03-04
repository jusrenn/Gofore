*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/Keywords/TestBase.robot
Resource    ../Resources/Keywords/HomePage.robot
Resource    ../Resources/Keywords/KaikkiPalvelutPage.robot
Resource    ../Resources/Keywords/KK_HomePage.robot

Test Setup    Setup
Test Teardown    Close Browser

*** Test Cases ***
Almamedia TC01
    Menee Palvelut ja tuotteet sivuun
    Klikkaa ja menee Kotikokiin sivulle
    Kirjoita Kotikokki-sivulla hakukenttään {} ja klikkaa hae-nappia.    makaroonilaatikko
    Valitse radionapeista ’Pastat ja nuudelit’ ja ’Makkara ja jauheliha’.
    Varmista, että saat hakutuloksia > 0 kpl

    