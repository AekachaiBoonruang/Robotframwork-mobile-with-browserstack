*** Settings ***
Library           Selenium2Library
 
*** Variables ***
${Username}       test
${Password}       test
${SiteUrl}        http://www.linkedin.com
${DashboardTitle}    World's Largest Professional Network | LinkedIn
${ExpectedWarningMessage}    Hmm, we don't recognize that email. Please try again.
${WarningMessage}    Login Failed!
${Delay}          5s
${BSUser}   napat6
${AccessKey}   MzezCTDqnSgAHaxMEicH
${RemoteUrl}   http://${BSUser}:${AccessKey}@hub.browserstack.com/wd/hub
 
 
*** Keywords ***
Open LinkedinPage
    [Arguments]   ${BROWSER}  ${BROWSER_VERSION}  ${OS}  ${OS_VERSION}
    Open Browser   url=${SiteUrl}   browser=${BROWSER}   remote_url=${RemoteURL}   desired_capabilities=browser:${BROWSER},browser_version:${BROWSER_VERSION},os:${OS},os_version:${OS_VERSION}
 
Maximize Browser
    Maximize Browser Window
 
Go to Sign In Page
    Click Element   //a[contains(text(),'Sign in')]

Enter User Name
    Input Text   id=username    ${Username}
 
Enter Wrong Password
    Input Text   id=password    ${Password}
 
Click Login
    Click Element   //button[contains(text(),'Sign in')]
 
 
Assert Warning Message
    Wait Until Page Contains   Please enter a valid username