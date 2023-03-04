*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/Keywords/TestBase.robot
Resource    ../Resources/Keywords/Almamedia.robot
Resource    ../Resources/Keywords/KotiKokki.robot

Test Setup    Setup
Test Teardown    Close Browser

*** Test Cases ***
Gofore TC01
    Navigoi sivulta edelleen Kotikokki-lehden sivulle kuvan kautta.
    Kirjoita Kotikokki-sivulla hakukenttään makaroonilaatikko ja klikkaa hae-nappia.
    Valitse radionapeista ’Pastat ja nuudelit’ ja ’Makkara ja jauheliha’.
    Varmista, että saat hakutuloksia > 0 kpl
    Valitse yksi resepti ja lisää se ostoslistalle.
    Avaa ostoslista, lue ainekset listalta ja lokita konsolille.