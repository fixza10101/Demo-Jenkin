*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${WELCOME URL}    https://www.google.co.th
${URL}    www.cs.kku.ac.th
${CHECK URL}    https://www.google.co.th/

*** Test Cases ***
Open Browser To Login Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${CHECK URL}
	
Go To CS KKU
    Input Text    q    ${URL}
	Submit Form    tsf
	Wait Until Page Contains    CS KKU
	Close Browser
