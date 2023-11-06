*** Settings ***
Resource  ../resources/common.robot
Resource  ../resources/pages/invoices-page.robot
Resource  ../resources/pages/add-new-invoice-page.robot

Suite Setup  common.Setup Web Test
Suite Teardown  common.Teardown Web Test

*** Test Cases ***
Navigate To Website Pages
    [Documentation]  Display the home page and add a new invoice page
    [Tags]  smoke
    Load Beaufort Fairmont Website
    Go To Add Invoice Page
    Go To Invoices Table
    Click On Manage Button
    
Add A New Invoice
    [Documentation]  Add a new invoice
    [Tags]  smoke
    Load Beaufort Fairmont Website
    Go To Add Invoice Page
    Fill In All Invoice Details  123456    Apple Inc.    Bug Fixing    1000    Sent    2017-01-31    Some description of the invoice
    Click On Create Button

