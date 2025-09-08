*** Settings ***
Library    AppiumLibrary
Resource    hooksAndCommonAction/hooks.robot
Resource    keywords/Android/login_keywords.robot
Resource    keywords/Android/home_keywords.robot


*** Test Cases ***
Login failed due to incorrect Email
    Open Android Real
    User tap login button Notification
    User tap login button Start
    User Select login by Email
    Load User Email to Login 
    User input wrong username by email
    User input password by email
    User tap login button by email
    Error message login failed by email

Login failed due to incorrect password
    User input username by email
    User input wrong password by email
    User tap login button by email
    Error message login failed by account

Login failed due to incorrect Username and Password
    User input wrong username by email
    User input wrong password by email
    User tap login button by email
    Error message login failed by email

Login Successfully Email On Real Device
    User Select login by Email
    Load User Email to Login
    User input username by email
    User input password by email
    User tap login button by email
#On notification (Đang không biết sủ lý khi đã accept, vì chỉ xuất hiện 1 lần)
    Verify login successfully