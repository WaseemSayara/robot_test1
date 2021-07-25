*** Settings ***
Library  OperatingSystem

*** Variable ***
${name}  ahmad

*** Test Cases ***
Test Case 1
    Expected Count Existing In File  .//input.txt  ${name}  3

Test Case 2
    Expected Count Existing In File  .//input.txt  waseem  2

*** Keywords ***
Expected Count Existing In File
    [Arguments]  ${my_file}  ${name}  ${expected}
    ${my_file}=  Get File  .\\input.txt
    ${occurence}=  Get Count  ${my_file}  ${name}
    Should Be Equal As Strings  ${occurence}  ${expected}

