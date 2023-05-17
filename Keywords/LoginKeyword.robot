*** Settings ***
Library    Browser
Resource    ../Resources/CommonResource.robot
Resource    ../Pages/MainPage.robot
Resource    ../Pages/LoginPage.robot
Resource    ../Keywords/MainKeyword.robot

*** Keywords ***
Open face wallet sample dApp
    ${launch_args}  Set Variable    ["--disable-blink-features=AutomationControlled"]
    New Browser  headless=${HEADLESS}        args=${launch_args}
    New Context  viewport={'width': 1800, 'height': 1000}
    New Page    ${BASE_URL}

Connect to Mumbai
    Open Face Wallet Sample DApp
    Verify First Page
    Click Connect Network    Mumbai

Login to Google
    [Arguments]    ${email}    ${password}
    Click Login Button
    Connect with Face Wallet by Google
    ${previous} =    Switch Page      NEW
    Input Email     ${email}
    Click Next
    Input Password    ${password}
    Click Next
    Switch Page    ${previous}
    Enter PIN Code    ${PINCODE}
    Click Continue Button
