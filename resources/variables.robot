*** Settings ***
Library  Collections
*** Variables ***
${BROWSER}  Chrome
${BEAUFORTFAIRMONT_URL}  http://inv.beaufortfairmont.com/

${add_invoice_href}  /addInvoice
${invoices_table_href}  /tables
${manage_href}  /editInvoice

${invoice_paid}=  Create Dictionary  invoice_number=12345  company_name=Apple Inc.  type_of_work=Development  amount=1000  status=Paid  due_date=2017-01-01  description=Test Invoice

${invoice_sent}=  {
...    "invoice_number": 465237,
...    "company_name": "Google Inc.",
...    "type_of_work": "Bug Fixing",
...    "amount": "301",
...    "status": "Sent",
...    "due_date": "2023-10-31",
...    "description": "Some Invoice description"
...    }