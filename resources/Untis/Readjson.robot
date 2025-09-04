*** Settings ***
Library    AppiumLibrary
Library    JSONLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${ENV_FILE}    ../../Poems3/resources/Test Data/Enviroment.json
${ACCOUNT_FILE}    ../../Poems3/resources/Test Data/Account.json

*** Keywords ***
Read Android Emulator
    [Documentation]    Reads and Return all Android Capabilities
    File Should Exist    ${ENV_FILE}
    ${json_text} =    Get File    ${ENV_FILE}
    ${json_data} =    Evaluate    json.loads('''${json_text}''')
    ${android_emulator} =    Get From Dictionary    ${json_data}    Android_Emulator

    ${remote_url} =    Get From Dictionary    ${android_emulator}    remote_url
    ${automation_name} =    Get From Dictionary    ${android_emulator}    automationName
    ${device_name} =    Get From Dictionary    ${android_emulator}    deviceName
    ${platform_name} =    Get From Dictionary    ${android_emulator}    platformName
    ${platform_version} =    Get From Dictionary    ${android_emulator}    platformVersion
    ${app_package} =    Get From Dictionary    ${android_emulator}    appPackage
    ${app_activity} =    Get From Dictionary    ${android_emulator}    appActivity
    
    ${Android_Emulator} =    Create Dictionary    
    ...    remote_url=${remote_url}    
    ...    automation_name=${automation_name}    
    ...    device_name=${device_name}    
    ...    platform_name=${platform_name}    
    ...    platform_version=${platform_version}    
    ...    app_package=${app_package}    
    ...    app_activity=${app_activity}
    RETURN    ${Android_Emulator}

Read iOS Emulator
    [Documentation]    Reads and Return all iOS Capabilities    
    File Should Exist    ${ENV_FILE}
    ${json_text} =    Get File    ${ENV_FILE}
    ${json_data} =    Evaluate    json.loads(${json_text})
    ${ios_emulator} =    Get From Dictionary    ${json_data}    iOS_Emulator
        
    ${remote_url} =    Get From Dictionary    ${ios_emulator}    remote_url
    ${automation_name} =    Get From Dictionary    ${ios_emulator}    automationName
    ${device_name} =    Get From Dictionary    ${ios_emulator}    deviceName
    ${platform_name} =    Get From Dictionary    ${ios_emulator}    platformName
    ${platform_version} =    Get From Dictionary    ${ios_emulator}    platformVersion
    ${app_package} =    Get From Dictionary    ${ios_emulator}    appPackage
    ${app_activity} =    Get From Dictionary    ${ios_emulator}    appActivity
    
    ${iOS_Emulator} =    Create Dictionary    
    ...    remote_url=${remote_url}    
    ...    automation_name=${automation_name}    
    ...    device_name=${device_name}    
    ...    platform_name=${platform_name}    
    ...    platform_version=${platform_version}    
    ...    app_package=${app_package}    
    ...    app_activity=${app_activity}
    RETURN    ${iOS_Emulator}

Read Android Real
    [Documentation]    Reads and Return all Android Capabilities
    File Should Exist    ${ENV_FILE}
    ${json_text} =    Get File    ${ENV_FILE}
    ${json_data} =    Evaluate    json.loads('''${json_text}''')
    ${android_real} =    Get From Dictionary    ${json_data}    Android_Real

    ${remote_url} =    Get From Dictionary    ${android_real}    remote_url
    ${automation_name} =    Get From Dictionary    ${android_real}    automationName
    ${device_name} =    Get From Dictionary    ${android_real}    deviceName
    ${platform_name} =    Get From Dictionary    ${android_real}    platformName
    ${platform_version} =    Get From Dictionary    ${android_real}    platformVersion
    ${app_package} =    Get From Dictionary    ${android_real}    appPackage
    ${app_activity} =    Get From Dictionary    ${android_real}    appActivity
    
    ${Android_Real} =    Create Dictionary    
    ...    remote_url=${remote_url}    
    ...    automation_name=${automation_name}    
    ...    device_name=${device_name}    
    ...    platform_name=${platform_name} 
    ...    app_package=${app_package}    
    ...    app_activity=${app_activity}
    Log    ${remote_url}
    RETURN    ${Android_Real}

Get User Account
    [Arguments]    ${account_name}
    File Should Exist    ${ACCOUNT_FILE}
    ${json_text} =    Get File    ${ACCOUNT_FILE}       
    ${json_data} =    Evaluate    json.loads('''${json_text}''')
    ${users} =    Get From Dictionary    ${json_data}    User
    ${user_account} =    Get From Dictionary    ${users}    ${account_name}
    
    ${username} =    Get From Dictionary    ${user_account}    username
    ${password} =    Get From Dictionary    ${user_account}    password
    
    RETURN    ${username}    ${password}

Get Admin Account
    [Arguments]    ${account_name}
    File Should Exist    ${ACCOUNT_FILE}
    ${json_text} =    Get File    ${ACCOUNT_FILE}
    ${json_data} =    Evaluate    json.loads(${json_text})
    ${admins} =    Get From Dictionary    ${json_data}    Admin
    ${admin_account} =    Get From Dictionary    ${admins}    ${account_name}
    
    ${username} =    Get From Dictionary    ${admin_account}    username
    ${password} =    Get From Dictionary    ${admin_account}    password
    
    RETURN    ${username}    ${password}