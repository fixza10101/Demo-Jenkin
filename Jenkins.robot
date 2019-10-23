*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${SERVER}         localhost:7272
${BROWSER}        chrome
${DELAY}          0
${VALID USER}     demo
${VALID PASSWORD}    mode
${WELCOME URL}      http://www.google.co.th
${URL}    www.cs.kku.ac.th

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
    Location Should Be    ${WELCOME URL}

Go To CS KKU
    Input Text    q    ${URL}
	Click Button    btnK
	Wait Until Page Contains    CS KKU

Close Browser
	Close Browser
