*** Settings ***
Library    AppiumLibrary
Resource    hooksAndCommonAction/hooks.robot
Resource    keywords/Android/login_keywords.robot


*** Test Cases ***
Login failed due to incorrect username
    Open Android Real
    User tap login button Notification
    User tap login button Start
    Load User Account to Login 
    User input wrong username
    User input password
    User tap login button
    Error message login failed

Login failed due to incorrect password
    User input username
    User input wrong password
    User tap login button
    Error message login failed

Login failed due to incorrect Username and Password
    User input wrong username
    User input wrong password
    User tap login button
    Error message login failed

Login Successfully On Real Device
    Load User Account to Login
    User input username
    User input password
    User tap login button