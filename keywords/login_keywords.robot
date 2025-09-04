*** Settings ***
Library    AppiumLibrary
Resource   ../resources/variables.robot
Resource   ../resources/locators.robot


*** Keywords ***
#Android
Open App Android    
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    noReset=${NO_RESET}  automationName=UiAutomator2

Input Login Credentials Android
    Input Text    ${USERNAME_FIELD_ANDROID}    ${USERNAME} timeout=100s 
    Input Text    ${PASSWORD_FIELD_ANDROID}    ${PASSWORD}

Tap Login Button Android
    Click Element    ${LOGIN_BUTTON_ANDROID}

Login Should Be Successful Android
    Wait Until Element Is Visible    ${SUCCESS_ELEMENT_ANDROID}    timeout=100s


Tap on me tab Android
    Click Element    ${TAP_ME_TAB_ANDROID}

Tap on settings icon Android
    Click Element    ${TAP_SETTINGS_ICON_ANDROID}

Tap on logout button Android
    Click Element    ${TAP_LOGOUT_BUTTON_ANDROID}

Accept logout dialog Android
    Click Element  ${TAP_OK_BUTTON_ANDROID}

Logout Should Be Successful Android 
    Wait Until Element Is Visible    ${SUCCESS_ELEMENT_LOGOUT_ANDROID}    timeout=100s  
    Close Application

#iOS
Open App iOS
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    noReset=${NO_RESET}  automationName=UiAutomator2

Input Login Credentials iOS
    Input Text    ${USERNAME_FIELD_IOS}    ${USERNAME} timeout=100s 
    Input Text    ${PASSWORD_FIELD_IOS}    ${PASSWORD}

Tap Login Button iOS
    Click Element    ${LOGIN_BUTTON_IOS}

Login Should Be Successful iOS
    Wait Until Element Is Visible    ${SUCCESS_ELEMENT_IOS}    timeout=100s


Tap on me tab iOS
    Click Element    ${TAP_ME_TAB_IOS}

Tap on settings icon iOS
    Click Element    ${TAP_SETTINGS_ICON_IOS}

Tap on logout button iOS
    Click Element    ${TAP_LOGOUT_BUTTON_IOS}

Accept logout dialog iOS
    Click Element  ${TAP_OK_BUTTON_IOS}

Logout Should Be Successful iOS
    Wait Until Element Is Visible    ${SUCCESS_ELEMENT_LOGOUT_IOS}    timeout=100s  
    Close Application

    