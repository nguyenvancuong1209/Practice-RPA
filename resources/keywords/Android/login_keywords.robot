*** Settings ***
Library    AppiumLibrary
Resource    Locators/Android/Login.robot
Resource    Untis/Readjson.robot


*** Keywords ***
#Android_Real

Load User Account to Login
    ${User_Name}    ${Password}=    Get User Account    user3
    Set Suite Variable    ${User_Name}
    Set Suite Variable    ${Password}

Load User Email to Login
    ${User_Name}    ${Password}=    Get User Account    user2
    Set Suite Variable    ${User_Name}
    Set Suite Variable    ${Password}

User input username
    Wait Until Element Is Visible    ${USERNAME_FIELD_ANDROID}
    Clear Text    ${USERNAME_FIELD_ANDROID}
    Input Text    ${USERNAME_FIELD_ANDROID}    ${User_Name}

User input password
    Wait Until Element Is Visible    ${PASSWORD_FIELD_ANDROID}
    Clear Text    ${PASSWORD_FIELD_ANDROID}
    Input Text    ${PASSWORD_FIELD_ANDROID}    ${Password}

User tap login button
    Wait Until Element Is Visible    ${LOGIN_BUTTON_ANDROID}
    Click Element    ${LOGIN_BUTTON_ANDROID}

User tap login button Start
    Wait Until Element Is Visible    ${LOGIN_BUTTON_START_ANDROID}
    Click Element    ${LOGIN_BUTTON_START_ANDROID}

User tap login button Notification
    Click Element    ${LOGIN_NOTIFICATION_ANDROID}
    

User input wrong username
    Wait Until Element Is Visible    ${USERNAME_FIELD_ANDROID}
    Clear Text    ${USERNAME_FIELD_ANDROID}
    Input Text    ${USERNAME_FIELD_ANDROID}    Harry
    
User input wrong password
    Wait Until Element Is Visible    ${PASSWORD_FIELD_ANDROID}
    Clear Text    ${PASSWORD_FIELD_ANDROID}
    Input Text    ${PASSWORD_FIELD_ANDROID}    9988

Error message login failed
    Wait Until Element Is Visible    ${ERROR_MESSAGE_LOGIN_FAILED_ANDROID}
    Element Text Should Be    ${ERROR_MESSAGE_LOGIN_FAILED_ANDROID}    You have either entered an invalid Login ID or Password.
    Click Element    ${BUTTON_OK_ERROR_MESSAGE_LOGIN_FAILED_ANDROID}



Wait for Login Screen
    Wait Until Page Contains Element    ${USERNAME_FIELD_ANDROID}