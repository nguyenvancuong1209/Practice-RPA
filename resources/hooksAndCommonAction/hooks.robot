*** Settings ***
Library    AppiumLibrary
Resource    ../Untis/Readjson.robot

*** Keywords ***
Open Android Simulator
    ${Android_Simulator} =    Read Android Emulator
    Open Application
    ...    ${Android_Simulator[remote_url]}
    ...    automation_name=${Android_Simulator[automation_name]}
    ...    device_name=${Android_Simulator[device_name]}
    ...    platform_name=${Android_Simulator[platform_name]}
    ...    platform_version=${Android_Simulator[platform_version]}
    ...    app_package=${Android_Simulator[app_package]}
    ...    app_activity=${Android_Simulator[app_activity]}


Open iOS Simulator
    ${iOS_Simulator} =    Read iOS Emulator
    Open Application
    ...    ${iOS_Simulator[remote_url]}
    ...    automation_name=${iOS_Simulator[automation_name]}
    ...    device_name=${iOS_Simulator[device_name]}
    ...    platform_name=${iOS_Simulator[platform_name]}
    ...    platform_version=${iOS_Simulator[platform_version]}
    ...    app_package=${iOS_Simulator[app_package]}
    ...    app_activity=${iOS_Simulator[app_activity]}

Open Android Real
    ${Android_Real} =    Read Android Real
    Open Application
    ...    remote_url=${Android_Real["remote_url"]}
    ...    automationName=${Android_Real["automation_name"]}
    ...    deviceName=${Android_Real["device_name"]}
    ...    platformName=${Android_Real["platform_name"]}
    ...    appPackage=${Android_Real["app_package"]}
    ...    appActivity=${Android_Real["app_activity"]}

