*** Settings ***
Library    AppiumLibrary
Resource    hooksAndCommonAction/hooks.robot
Resource    keywords/Android/login_keywords.robot


*** Test Cases ***
Đăng nhập không thành công do sai username
    Open Android Real
    User tap login button Notification
    User tap login button Start
    Load User Account to Login 
    User input wrong username
    User input password
    User tap login button
    Error message displayed

Đăng nhập không thành công do sai password
    User input username
    User input wrong password
    User tap login button
    Error message displayed

Đăng nhập không thàng công so sai User Name và Password
    User input wrong username
    User input wrong password
    User tap login button
    Error message displayed

Đăng Nhập Thành Công Trên Thiết Bị Thật
    Open Android Real
    Load User Account to Login
    User input username
    User input password
    User tap login button