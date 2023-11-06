*** Settings ***
Library           SeleniumLibrary

Resource          ../resources/variables.robot

*** Keywords ***
Setup Web Test
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window
    Capture Page Screenshot

    Set Selenium Speed    0.5s
    Set Selenium Implicit Wait    10s

Teardown Web Test
    Close All Browsers
