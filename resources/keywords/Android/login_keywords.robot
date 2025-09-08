*** Settings ***
Library    AppiumLibrary
Resource    Locators/Android/Login.robot
Resource    Locators/Android/Home.robot
Resource    Untis/Readjson.robot


*** Keywords ***
#Android_Real
#Login by Account
Load User Account to Login
    ${User_Name}    ${Password}=    Get User Account    user3
    Set Suite Variable    ${User_Name}
    Set Suite Variable    ${Password}

User Select login by Account
    Wait Until Element Is Visible    ${Login_by_account}    timeout=20s
    Click Element    ${Login_by_account}

User input username by account
    Wait Until Element Is Visible    ${USERNAME_ACCOUNT_ANDROID}    timeout=20s
    Clear Text    ${USERNAME_ACCOUNT_ANDROID}
    Input Text    ${USERNAME_ACCOUNT_ANDROID}    ${User_Name}

User input password by account
    Wait Until Element Is Visible    ${PASSWORD_ACCOUNT_ANDROID}    timeout=20s
    Clear Text    ${PASSWORD_ACCOUNT_ANDROID}
    Input Text    ${PASSWORD_ACCOUNT_ANDROID}    ${Password}

User tap login button by account
    Wait Until Element Is Visible    ${LOGIN_BUTTON_ACCOUNT_ANDROID}    timeout=20s
    Click Element    ${LOGIN_BUTTON_ACCOUNT_ANDROID}

User tap login button Start
    Wait Until Element Is Visible    ${LOGIN_BUTTON_START_ANDROID}    timeout=20s
    Click Element    ${LOGIN_BUTTON_START_ANDROID}

User tap login button Notification
    Click Element    ${LOGIN_NOTIFICATION_ANDROID}
    
User input wrong username by account
    Wait Until Element Is Visible    ${USERNAME_ACCOUNT_ANDROID}    timeout=20s
    Clear Text    ${USERNAME_ACCOUNT_ANDROID}
    Input Text    ${USERNAME_ACCOUNT_ANDROID}    Harry
    
User input wrong password by account
    Wait Until Element Is Visible    ${PASSWORD_ACCOUNT_ANDROID}    timeout=20s
    Clear Text    ${PASSWORD_ACCOUNT_ANDROID}
    Input Text    ${PASSWORD_ACCOUNT_ANDROID}    9988

Error message login failed by account
    Wait Until Element Is Visible    ${ERROR_MESSAGE_LOGIN_FAILED_ACCOUNT_ANDROID}    timeout=20s
    Element Text Should Be    ${ERROR_MESSAGE_LOGIN_FAILED_ACCOUNT_ANDROID}    You have either entered an invalid Login ID or Password.
    Click Element    ${BUTTON_OK_ERROR_MESSAGE_LOGIN_FAILED_ACCOUNT_ANDROID}

Wait for Login Screen
    Wait Until Page Contains Element    ${USERNAME_ACCOUNT_ANDROID}    timeout=20s

Verify login successfully
    Wait Until Page Contains Element    ${ASK_AI_BUTTON_ANDROID}    timeout=20s
    Element Should Be Visible    ${ASK_AI_BUTTON_ANDROID}

#Login by Email
Load User Email to Login
    ${User_Name}    ${Password}=    Get User Account    user2
    Set Suite Variable    ${User_Name}
    Set Suite Variable    ${Password}

User Select login by Email
    Wait Until Element Is Visible    ${Login_by_email}    timeout=20s
    Click Element    ${Login_by_email}

User input username by email
    Wait Until Element Is Visible    ${USERNAME_EMAIL_ANDROID}    timeout=20s
    Clear Text    ${USERNAME_EMAIL_ANDROID}
    Input Text    ${USERNAME_EMAIL_ANDROID}    ${User_Name}

User input password by email
    Wait Until Element Is Visible    ${PASSWORD_EMAIL_ANDROID}    timeout=20s
    Clear Text    ${PASSWORD_EMAIL_ANDROID}
    Input Text    ${PASSWORD_EMAIL_ANDROID}    ${Password}

User tap login button by email
    Wait Until Element Is Visible    ${LOGIN_BUTTON_EMAIL_ANDROID}    timeout=20s
    Click Element    ${LOGIN_BUTTON_EMAIL_ANDROID}
    
Error message login failed by email
    Wait Until Element Is Visible    ${ERROR_MESSAGE_LOGIN_FAILED_EMAIL_ANDROID}    timeout=20s
    Element Text Should Be    ${ERROR_MESSAGE_LOGIN_FAILED_EMAIL_ANDROID}    Sorry, the email address or password is incorrect
    Click Element    ${BUTTON_OK_ERROR_MESSAGE_LOGIN_FAILED_EMAIL_ANDROID}

User input wrong username by email
    Wait Until Element Is Visible    ${USERNAME_EMAIL_ANDROID}    timeout=20s
    Clear Text    ${USERNAME_EMAIL_ANDROID}
    Input Text    ${USERNAME_EMAIL_ANDROID}    Harry
    
User input wrong password by email
    Wait Until Element Is Visible    ${PASSWORD_ACCOUNT_ANDROID}    timeout=20s
    Clear Text    ${PASSWORD_ACCOUNT_ANDROID}
    Input Text    ${PASSWORD_ACCOUNT_ANDROID}    9988
