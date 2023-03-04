*** Settings ***
Library    SeleniumLibrary
Library    String

Variables    ../Locators/Locators.py

*** Keywords ***
Kirjoita Kotikokki-sivulla hakukenttään makaroonilaatikko ja klikkaa hae-nappia.
    [Arguments]    ${ruoanNimi}
    ${status}    Run Keyword And Return Status    Element Should Be Visible    ${cookiesButtonKK}
    Run Keyword If    ${status}    Click Element    ${cookiesButtonKK}
    Input Text    ${searchBoxInput}    ${ruoanNimi}
    Click Link    ${haeButton}

Valitse radionapeista ’Pastat ja nuudelit’ ja ’Makkara ja jauheliha’.
    Click Element    ${pastatJaNuudelit}
    Click Element    ${makkaraJaJauheliha}

Varmista, että saat hakutuloksia > 0 kpl
    ${resultText}    Get Text    ${result}
    ${resultSplit}    Split String    ${resultText}
    Should Be True    ${resultSplit}[2]>0
    Sleep    3