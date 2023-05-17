*** Settings ***
Library    Browser
Resource    ../Resources/LoginPageResource.robot

*** Keywords ***
Input Email
    [Arguments]    ${email}
    Type Text    ${EMAIL_FIELD}    ${email}

Input Password
    [Arguments]    ${password}
    Type Text    ${PASSWORD_FIELD}    ${password}

Click Next
    Click   ${NEXT_BUTTON}