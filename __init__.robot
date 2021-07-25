*** Settings ***
Library  OperatingSystem
Suite Setup  Print Message  Hello
Suite Teardown  Print Message  bye


*** Keywords ***

Print Message
    [Arguments]  ${message}
    Log  ${message}
