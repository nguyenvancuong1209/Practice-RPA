*** Settings ***
Library    AppiumLibrary
Resource   ../resources/variables.robot
Resource   ../resources/locators.robot
Resource   ../keywords/login_keywords.robot

*** Test Cases ***
Đăng Nhập Thành Công Trên Thiết Bị Thật
    Open App Android
    Input Login Credentials Android
    Tap Login Button Android
    Login Should Be Successful Android
    
Đăng Xuất Thành Công Trên Thiết Bị Thật
    Tap on me tab Android
    Tap on settings icon Android
    Tap on logout button Android
    Accept logout dialog Android
    Logout Should Be Successful Android