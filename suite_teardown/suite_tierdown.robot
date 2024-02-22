*** Settings ***

Suite Setup    Teste de suite
Suite Teardown    Log To Console    \n\nPreparação final da suite\n
Test Setup    Log To Console    \n\nSetup para cada tete \n

*** Keywords ***

teste de suite
    Log To Console    \npreparando a suite 01\n

setup multiplus
    Log To Console    setup 01
    Log To Console    setup 02
    Log To Console    setup 03

*** Test Cases ***
teste 01
    [Tags]   setup
    [Setup]  setup multiplus  
    Log To Console    teste 01\n\n
teste 02
    [Tags]    David
    Log To Console    teste 02\n\n
