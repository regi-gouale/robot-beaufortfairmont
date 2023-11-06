*** Settings ***
Resource  ../resources/common.robot
Resource  ../resources/pages/invoices-page.robot
Resource  ../resources/pages/add-new-invoice-page.robot

Suite Setup  common.Setup Web Test
Suite Teardown  common.Teardown Web Test

*** Test Cases ***
Navigate To Website Pages
    [Documentation]  Display the home page
    [Tags]  smoke
    Load Beaufort Fairmont Website
    Go To Add Invoice Page
    Go To Invoices Table
    Click On Manage Button
    