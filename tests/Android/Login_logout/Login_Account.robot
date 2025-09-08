*** Settings ***
Library    AppiumLibrary
Resource    hooksAndCommonAction/hooks.robot
Resource    keywords/Android/login_keywords.robot
Resource    keywords/Android/home_keywords.robot


*** Test Cases ***
Login failed due to incorrect username
    Open Android Real
    User tap login button Notification
    User tap login button Start
    User Select login by Account
    Load User Account to Login 
    User input wrong username by account
    User input password by account
    User tap login button by account
    Error message login failed by account

Login failed due to incorrect password
    User input username by account
    User input wrong password by account
    User tap login button by account
    Error message login failed by account

Login failed due to incorrect Username and Password
    User input wrong username by account
    User input wrong password by account
    User tap login button by account
    Error message login failed by account

Login Successfully Account On Real Device
    User Select login by Account
    Load User Account to Login
    User input username by account
    User input password by account
    User tap login button by account
#On notification (Đang không biết sủ lý khi đã accept, vì chỉ xuất hiện 1 lần)
    Verify login successfully