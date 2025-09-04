*** Settings ***
Library    AppiumLibrary
Resource   ../resources/variables.robot
Resource   ../resources/locators.robot
Resource   ../keywords/login_keywords.robot

*** Test Cases ***
Đăng Nhập Thành Công Trên Thiết Bị Thật
    Open App iOS
    Input Login Credentials iOS
    Tap Login Button iOS
    Login Should Be Successful iOS
    
Đăng Xuất Thành Công Trên Thiết Bị Thật
    Tap on me tab iOS
    Tap on settings icon iOS
    Tap on logout button iOS
    Accept logout dialog iOS
    Logout Should Be Successful iOS