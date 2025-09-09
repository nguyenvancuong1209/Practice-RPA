*** Settings ***
Library    AppiumLibrary
Resource    hooksAndCommonAction/hooks.robot
Resource    keywords/Android/login_keywords.robot
Resource    keywords/Android/home_keywords.robot
Resource    keywords/Android/logout_keywords.robot


*** Test Cases ***
Login Successfully On Real Device
    Open Android Real
    User tap login button Notification
    User tap login button Start
    Load User Account to Login
    User input username by account
    User input password by account
    User tap login button by account

Logout Successfully
    Tap on me tab Android
    Tap on settings icon Android
    Tap on logout button Android
    Accept logout dialog Android
    Logout Should Be Successful Android
