*** Settings ***
Library    AppiumLibrary
Resource    Locators/Android/Login.robot
Resource    Locators/Android/Home.robot
Resource    Locators/Android/Metab.robot
Resource    Untis/Readjson.robot


*** Keywords ***


#Logout
Tap on me tab Android
    Wait Until Element Is Visible    ${TAP_ME_TAB_ANDROID}    timeout=20s
    Click Element    ${TAP_ME_TAB_ANDROID}

Tap on settings icon Android
    Wait Until Element Is Visible    ${TAP_SETTINGS_ICON_ANDROID}    timeout=20s
    Click Element    ${TAP_SETTINGS_ICON_ANDROID}

Tap on logout button Android
    Wait Until Element Is Visible    ${TAP_LOGOUT_BUTTON_ANDROID}    timeout=20s
    Click Element    ${TAP_LOGOUT_BUTTON_ANDROID}

Accept logout dialog Android
    Wait Until Element Is Visible    ${TAP_OK_BUTTON_ANDROID}    timeout=20s
    Click Element  ${TAP_OK_BUTTON_ANDROID}

Logout Should Be Successful Android 
    Wait Until Element Is Visible    ${SUCCESS_ELEMENT_LOGOUT_ANDROID}    timeout=100s  
    Close Application
