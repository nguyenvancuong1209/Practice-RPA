*** Settings ***
Library    AppiumLibrary
Resource    hooksAndCommonAction/hooks.robot
Resource    keywords/Android/login_keywords.robot
Resource    keywords/Android/home_keywords.robot


*** Test Cases ***
Login Successfully On Real Device
    Open Android Real
    User tap login button Notification
    User tap login button Start
    Load User Account to Login
    User input username
    User input password
    User tap login button

User tap search button
    User tap search button

Input text to search box
    Input text to search box

Verify search result
    Verify search result
