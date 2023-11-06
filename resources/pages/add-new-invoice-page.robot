*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Go To Invoices Table
    Click Element  css:[href="#${invoices_table_href}"]

Fill In Invoice Number
    [Arguments]  ${invoice_number}
    Input Text  css:[name="invoice"]  ${invoice_number}

Fill In Company Name
    [Arguments]  ${company_name}
    Input Text  css:[name="company"]  ${company_name}

Fill In Type Of Work
    [Arguments]  ${type_of_work}
    Input Text  css:[name="type"]  ${type_of_work}

Fill In Amount
    [Arguments]  ${amount}
    Input Text  css:[name="price"]  ${amount}

Set Invoice Status
    [Arguments]  ${status}
    Select From List By Label  css:#selectStatus  ${status}

Fill In Due Date
    [Arguments]  ${due_date}
    Input Text  css:[name="dueDate"]  ${due_date}

Fill In Description
    [Arguments]  ${description}
    Input Text  css:[name="comment"]  ${description}

Click On Create Button
    Click Button  css:#createButton

Click On Cancel Button
    Click Button  xpath://*[@id="content-wrapper"]/div/div[2]/div/div/form/a[2]/button