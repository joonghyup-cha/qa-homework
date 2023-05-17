*** Settings ***
Resource    Keywords/MainKeyword.robot
Resource    Keywords/LoginKeyword.robot

*** Test Cases ***
Face Wallet E2E Test
    Connect To Mumbai
    Login to Google    ${EMAIL}    ${PASSWORD}
    Transper Coin
    Sign Message    test message
