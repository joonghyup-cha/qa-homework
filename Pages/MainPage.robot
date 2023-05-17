*** Settings ***
Library    Browser
Resource    ../Resources/MainPageResource.robot

*** Keywords ***
Verify First Page
    Get Element     //h2[text() = 'Connect Network']

    Get Element     //h2[text() = 'Log in']/..//div[text() = '${NEED_TO_CONNECTION_MESSAGE}']
    Get Element     //h2[text() = 'Wallet Connect']/..//div[text()='${NEED_TO_CONNECTION_MESSAGE}']
    Get Element     //h2[text() = 'Coin Transaction']/..//div[text() ='${NEED_TO_CONNECTION_MESSAGE}']
    Get Element     //h2[text() = 'Fungible Token Transaction']/..//div[text() ='${NEED_TO_CONNECTION_MESSAGE}']
    Get Element     //h2[text() = 'Non-Fungible Token Transaction']/..//div[text() ='${NEED_TO_CONNECTION_MESSAGE}']
    Get Element     //h2[text() = 'Contract Call Transaction']/..//div[text() ='${NEED_TO_CONNECTION_MESSAGE}']
    Get Element     //h2[text() = 'Sign Message']/..//div[text() ='${NEED_TO_CONNECTION_MESSAGE}']

Click Connect Network
    [Arguments]    ${NETWORK_NAME}
    Click    //div[contains(@class, 'button') and .//text()[contains(., 'Connect to')] and .//text()[contains(., '${NETWORK_NAME}')]]

Click Login Button
    Click    //div[contains(text(), 'Log in with Face wallet')]

Connect with Face Wallet by ${CONNECTION_WAY}
    Click    id=face-iframe >>> //div[text() = 'Continue with ${CONNECTION_WAY}']

Click Transfer 0.0001 coin
    Click    //div[text()='Transfer 0.0001 coin']

Click Send Now Button
    Click    id=face-iframe >>> //div[text()='Send Now']

Input Sign Message
    [Arguments]    ${message}
    Type Text    //label[text()='Message']/../..//p/textarea     ${message}

Click Sign Message
    Click    //div[text()='Sign Message']

Click Sign Button
    Click    id=face-iframe >>> //div[text()='Sign']

Click Continue Button
    Click    id=face-iframe >>> //div[text()='Continue']

Verify Success
    Get Element    id=face-iframe >>> //div[text()= 'Success!']

Verify Signature success
    Get Element    id=face-iframe >>> //div[text()= 'Signature success!']

Click Close button
    Click    id=face-iframe >>> //button[contains(@class, 'closeButton')]