*** Settings ***
Library           SeleniumLibrary

Resource          ../resources/variables.robot
*** Keywords ***
Setup Web Test
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s
    Set Selenium Implicit Wait    10s

Teardown Web Test
    Close All Browsers
    