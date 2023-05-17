*** Settings ***
Library    Browser
Library  String
Resource    ../Pages/MainPage.robot
Resource    ../Resources/CommonResource.robot

*** Keywords ***
Enter PIN Code
    [Arguments]    ${PINCODE}
    Wait For Elements State     id=face-iframe >>> //div[text() = 'Enter your PIN code']    visible    timeout=20

    ${text_length}=  Get Length  ${PINCODE}
    FOR  ${i}  IN RANGE  0  ${text_length}
        ${char}=  Get Substring  ${PINCODE}  ${i}  ${i+1}
        Click    id=face-iframe >>> //button[text()='${char}']
    END

Transper Coin
    Click Transfer 0.0001 Coin
    Click Send Now Button
    Enter PIN Code    ${PINCODE}
    Verify Success
    Click Close button

Sign Message
    [Arguments]    ${message}
    Input Sign Message    ${message}
    Click Sign Message
    Click Sign Button
    Enter PIN Code    ${PINCODE}
    Verify Signature success
    Click Close button