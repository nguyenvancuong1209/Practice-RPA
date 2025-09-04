*** Settings ***
Library    AppiumLibrary
Resource    Locators/Android/Login.robot
Resource    Untis/Readjson.robot


*** Keywords ***
#Android_Simulator

Load User Account to Login
    ${User_Name}    ${Password}=    Get User Account    user3
    Set Suite Variable    ${User_Name}
    Set Suite Variable    ${Password}

Load Admin Account to Login
    ${Admin_Name}    ${Admin_Password}=    Get Admin Account    admin1
    Set Suite Variable    ${Admin_Name}
    Set Suite Variable    ${Admin_Password}

User input username
    Clear Text    ${USERNAME_FIELD_ANDROID}
    Input Text    ${USERNAME_FIELD_ANDROID}    ${User_Name}

User input password
    Clear Text    ${PASSWORD_FIELD_ANDROID}
    Input Text    ${PASSWORD_FIELD_ANDROID}    ${Password}

User tap login button
    Click Element    ${LOGIN_BUTTON_ANDROID}

User tap login button Start
    Click Element    ${LOGIN_BUTTON_START_ANDROID}

User tap login button Notification
    Click Element    ${LOGIN_NOTIFICATION_ANDROID}
    

User input wrong username
    Clear Text    ${USERNAME_FIELD_ANDROID}
    Input Text    ${USERNAME_FIELD_ANDROID}    UserName
    
User input wrong password
    Clear Text    ${PASSWORD_FIELD_ANDROID}
    Input Text    ${PASSWORD_FIELD_ANDROID}    1

Error message displayed
    Element Text Should Be    ${ERROR_MESSAGE_ANDROID}    Invalid username or password

Wait for Login Screen
    Wait Until Page Contains Element    ${USERNAME_FIELD_ANDROID}