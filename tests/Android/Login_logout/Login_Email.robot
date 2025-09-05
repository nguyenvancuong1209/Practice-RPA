*** Settings ***
Library    AppiumLibrary
Resource    hooksAndCommonAction/hooks.robot
Resource    keywords/Android/login_keywords.robot


*** Test Cases ***
Login Successfully Email On Real Device
    Open Android Real
    User tap login button Notification
    User tap login button Start
    Load User Email to Login
    User input username
    User input password
    User tap login button
