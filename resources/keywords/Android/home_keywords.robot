*** Settings ***
Library    AppiumLibrary
Resource    Locators/Android/Login.robot
Resource    Untis/Readjson.robot
Resource    Locators/Android/Home.robot


*** Keywords ***
#Android_Real

User tap search button
    Wait Until Element Is Visible    ${SEARCH_BUTTON_ANDROID}
    Click Element    ${SEARCH_BUTTON_ANDROID}

Input text to search box
    Wait Until Element Is Visible    ${TEXT_BOX_SEARCH_ANDROID}
    Input Text    ${TEXT_BOX_SEARCH_ANDROID}    AAPL

Verify search result
    Wait Until Element Is Visible    ${SEARCH_RESULT_ANDROID}
    Element Should Be Visible    ${SEARCH_RESULT_ANDROID}