*** Variables ***

#login by account
${Login_by_account}    com.tdt.pmobile3.p2:id/rdTab0
${USERNAME_ACCOUNT_ANDROID}     com.tdt.pmobile3.p2:id/edtInputAccount
${PASSWORD_ACCOUNT_ANDROID}     com.tdt.pmobile3.p2:id/ctContentPassWord
${LOGIN_BUTTON_ACCOUNT_ANDROID}       com.tdt.pmobile3.p2:id/buttonPlaceholder
${ERROR_MESSAGE_LOGIN_FAILED_ACCOUNT_ANDROID}      com.tdt.pmobile3.p2:id/tvMessageAlert
${BUTTON_OK_ERROR_MESSAGE_LOGIN_FAILED_ACCOUNT_ANDROID}      com.tdt.pmobile3.p2:id/btnOkDialog
${LOGIN_SCREEN_ACCOUNT_ANDROID}       com.tdt.pmobile3.p2:id/tvLoginAccountScreen
${LOGIN_NOTIFICATION_ANDROID}       com.android.permissioncontroller:id/permission_allow_button
${LOGIN_BUTTON_START_ANDROID}       com.tdt.pmobile3.p2:id/btnLogin

#login by phone
${Login_by_phone}    com.tdt.pmobile3.p2:id/rdTab1 
${USERNAME_PHONE_ANDROID}     
${PASSWORD_PHONE_ANDROID}     
${LOGIN_BUTTON_PHONE_ANDROID}      
${ERROR_MESSAGE_LOGIN_FAILED_PHONE_ANDROID}      
${BUTTON_OK_ERROR_MESSAGE_LOGIN_FAILED_PHONE_ANDROID}      
${LOGIN_SCREEN_PHONE_ANDROID}       

#login by email
${Login_by_email}    com.tdt.pmobile3.p2:id/rdTab2 
${USERNAME_EMAIL_ANDROID}     com.tdt.pmobile3.p2:id/textInputAccount
${PASSWORD_EMAIL_ANDROID}     com.tdt.pmobile3.p2:id/ctContentPassWord
${LOGIN_BUTTON_EMAIL_ANDROID}       com.tdt.pmobile3.p2:id/buttonPlaceholder
${ERROR_MESSAGE_LOGIN_FAILED_EMAIL_ANDROID}      com.tdt.pmobile3.p2:id/tvMessageAlert
${BUTTON_OK_ERROR_MESSAGE_LOGIN_FAILED_EMAIL_ANDROID}      com.tdt.pmobile3.p2:id/btnOkDialog
${LOGIN_SCREEN_EMAIL_ANDROID}       com.tdt.pmobile3.p2:id/tvLoginAccountScreen
