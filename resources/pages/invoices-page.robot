*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Load Beaufort Fairmont Website
    Go To  ${BEAUFORTFAIRMONT_URL}
    Wait Until Page Contains  Manage
    Capture Page Screenshot

Open Invoice By Id
    [Arguments]  ${invoice_id}
    Click Link  css:#invoiceNo_${invoice_id} > a
    Capture Page Screenshot

Go To Add Invoice Page
    Click Element    css:[href="#${add_invoice_href}"]