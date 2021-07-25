*** Settings ***
Library  OperatingSystem
Suite Setup  Log  Hello
Suite Teardown  Log  bye
Test Setup  Log  start of test
Test Teardown  Log  end of test
*** Variable ***
${name}  ahmad

*** Test Cases ***
Cout Number Of Existing
    ${my_file}=  Get File  .\\input.txt
    ${occurence}=  Get Count  ${my_file}  ${name}
    Should Be Equal As Strings  ${occurence}  3

